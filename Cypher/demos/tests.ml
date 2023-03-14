open Cypher_lib.Parser
open Cypher_lib.Interpret

let () =
  let str = Stdio.In_channel.input_all Caml.stdin in
  let parsed = parse str in
  let open Caml.Format in
  match parsed with
  | Error err -> printf "%s%!" err
  | Ok commands ->
    (match run commands with
     | Error err -> printf "%a%!" pp_error err
     | Ok (_, _) -> printf "")
;;

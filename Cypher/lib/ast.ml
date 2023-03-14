(** Copyright 2022-2023, Drumov and contributors *)

(** SPDX-License-Identifier: LGPL-3.0-or-later *)

(** Constant type *)
type constant =
  | CString of string (** String literals "Something"*)
  | CInt of int (** Integer literals 123 *)
[@@deriving show { with_path = false }]

(** Binary operations type *)
type binary_op =
  | Add (** + *)
  | Sub (** - *)
  | Mul (** * *)
  | Div (** / *)
  | Eq (** = *)
  | NEq (** <> *)
  | Less (** < *)
  | Gre (** > *)
  | LEq (** <= *)
  | GEq (** >= *)
  | And (** && *)
  | Or (** || *)
  | KWAnd (** Keyword AND *)
  | KWOr (** Keyword OR *)
  | Xor (** Keyword XOR *)
  | As (** Keyword AS *)
[@@deriving show { with_path = false }]

(** Unary operations type *)
type unary_op =
  | Not (** NOT *)
  | KWNot (** ! *)
  | IsNull (** NULL *)
  | IsNotNull (** NOT NULL *)
[@@deriving show { with_path = false }]

(** Expression type *)
type expr =
  | EConst of constant
  (* % -- expression for the node label returns all the nodes that contain at least one label.*)
  (* | EWildcard *)
  | EGetProp of string * string
  | EGetType of string
  | EGetElm of string
  | EGetAlias of string
  | EBinop of binary_op * expr * expr
  | EUnop of unary_op * expr
[@@deriving show { with_path = false }]

(** {name:"Ann"} *)
type property = string * expr [@@deriving show { with_path = false }]

type direction = string option * string option * property list option
[@@deriving show { with_path = false }]

type edge_direction =
  | DirectR of direction
  | DirectL of direction
  | UnDirect of direction
[@@deriving show { with_path = false }]

(** [edge : PARENT { role: "Father" }] *)
type edge_data = EdgeData of edge_direction [@@deriving show { with_path = false }]

(** (node : PERSON { name: "Ann" }) *)
type node_data = NodeData of string option * string list option * property list option
[@@deriving show { with_path = false }]

type elm =
  | Node of node_data (** (node_data) *)
  | Edge of node_data * edge_data * node_data (** (node_data)-[edge_data]->(node_data) *)
[@@deriving show { with_path = false }]

type cmd_with_match =
  (* | CMSet of expr * expr option * property list option *)
  (* SET n.name = "Tyler" or SET n = {surname: "Derden"}*)
  | CMWhere of expr (** WHERE n.name = "Ann" AND n.age < 20 *)
[@@deriving show { with_path = false }]

type cmd_match =
  | CMCreate of elm list (** CREATE elms *)
  | CMDelete of string list (** DELETE vars *)
  | CMDetachDelete of string list (** DETACH DELETE vars *)
  | CMReturn of expr list (** RETURN vars *)
[@@deriving show { with_path = false }]

type command =
  | CmdCreate of elm list (** CREATE elms *)
  | CmdMatch of elm list * cmd_with_match option * cmd_match list
      (** MATCH elms cmd_with_match cmd_match *)
[@@deriving show { with_path = false }]

type program = command list [@@deriving show { with_path = false }]

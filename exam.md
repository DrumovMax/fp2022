Темы к экзамену по ФП 2022-2023 (не окончательные)

* Функции в программировании и функции в математике. Сходства и отличия. Понятие чистой функции.
* Алгебраические типы данных. Что такое и почему такое название
  * Boolean blindness
* История Mars Climate Orbiter. Понятие zero-cost abstraction (летучка 3)
* GADT
  * Равенство  типов (летучки 4)
* Хвостовая рекурсия. Переход к хвостовой рекурсии на простых примерах
* Continuation passing style. Преобразование фукнкций из стандартного (direct) стиля в CPS
  * Быть готовыми переписать рекурсивную функцию из домашнего задания в CPS.
* Парсер-комбинаторы
  * Уметь написать и объяснить парсер языка a^n b^n c^n (где а,b,c -- символы алфавита, ^n -- n вхождений подряд). 
    Плохой вход должен детектироваться максимально рано.
* Понятие мемоизации. 
  * Пример: эффективное вычисление чисел Фибоначчи.
* Лямбда-исчисление.
  * Понятие исчисления. Аксиомы, правила вывода, посылки и заключения. Доказательства.
  * Три правила (α, β, η) преобразования лямбда-термов. 
  * Лямбда исчисление как универсальный язык программирования. Числа Чёрча, арифметика, ветвления.
  * Стратегии вычисления лямбда-термов: CBN, CBV, CBNeeded, NO, AO. Достоинства и недостатки. 
  * Написания рекурсивных функций без использования рекурсии. Y- и Z- комбинаторы. 
    * Примеры
  * Capture avoiding substitution. Индексы и уровни, придуманные N. de Bruijn. 
  * Унификация и подстановки. Occurs check. 
    * Уметь демонстрировать преимущества и недостатки включения/выключения occurs check.
* Ленивые списки (потоки)
  * Стандартные задачи: фибоначчи
* Монады. Законы монад. Стандартные монады: Maybe, List, Maybe, Parser.
* PFDS. Понятие неизменяемых и устойчивых (persistent) типов данных.
* PFDS. Чисто функциональные очереди. Три реализации
* PFDS. Понятие префиксных деревьев и HAMT.
* ~~Схемы рекурсии. На примере списков и деревьев. Ката- и анаморфизм.~~
* ~~Схемы рекурсии. Хиломорфизм. Решения задач: фибоначчи, binary partition, LCS~~


Вопрос-автомат на оценку F:

* Привести (подготовить заранее) трассу вычисления факториала (или фибоначчи) для каждой из стратегий (CBN,CBV,NO,AO) для "голого" лямбда исчисления. Демонстрировать понимание того, как проходят редукции в указанной стратегии.
* добавить про tailrec


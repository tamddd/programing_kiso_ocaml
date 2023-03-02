let rec sum lst = match lst with
[] -> 0
| first :: rest -> first + (sum rest)


let rec length lst = match lst with
[] -> 0
| first :: rest -> 1 + length rest


let rec fold_right f lst init = match lst with
[] -> init
| first :: rest -> f first (fold_right f rest init)

(*
let add_int first rest_result = first + rest_result
let sum2 lst = fold_right add_int lst 0


let add_one first rest_result = 1 + rest_result
let length2 lst = fold_right add_one lst 0

let append_one first rest_result = first :: rest_result
let append lst = fold_right append_one lst []


let conc first rest_result = first ^ rest_result
let concat lst = fold_right conc lst ""
*)

let sum lst =
   let add_int first rest_result = first + rest_result in
   fold_right add_int lst 0

let length lst =
  let add_one first rest_result = 1 + rest_result in
  fold_right add_one lst 0

let append lst =
  let append_one first rest_result = first :: rest_result in
  fold_right append_one lst []

let concat lst =
  let can first rest_result = first ^ rest_result in
  fold_right can lst ""


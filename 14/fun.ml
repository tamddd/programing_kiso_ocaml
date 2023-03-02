(*let 変数名 = fun 引数 ...->　式*)

let rec fold_right f lst init = match lst with
[] -> init
| first :: rest -> f first (fold_right f rest init)

let sum lst =
  fold_right (fun first rest_result -> first + rest_result) lst 0

let length lst =
  fold_right (fun first rest_result -> 1 + rest_result) lst 0

let append lst =
  fold_right (fun first rest_result -> first :: rest_result) lst []

(*fun x -> (x*x)-1
fun p -> match p with {namae:n} -> n
*)



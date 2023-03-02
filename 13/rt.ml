let rec map_sqrt lst = match lst with
[] -> []
| first :: rest -> sqrt first :: map_sqrt rest

(*
let rec map_hyouka lst = match lst with
[] -> []
| first :: rest -> hyouka first :: map_hyouka rest
*)

let rec map f lst = match lst with
[] -> []
| first :: rest -> f first :: map f rest

(*高階関数 関数を引数として受け取る*)

let namae p = match p with
[] -> []
| {namae:n} :: rest -> n

let person_namae namae lst

let twice7 f = f (f 7)

let add3 x = x + 3


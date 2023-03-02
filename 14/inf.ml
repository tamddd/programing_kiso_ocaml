
let rec enumerate n =
  if n = 0 then [] else n :: enumerate (n-1)

let divisor n = List.filter (fun x -> n mod x = 0) (enumerate n)


let perfect m =
  List.filter (fun n -> List.fold_right (+) (divisor n) 0 - n = n)
    (enumerate m)

let one_to_n n =
  List.fold_right (+) (enumerate n) 0


let fac n =
  List.fold_right ( * ) (enumerate n) 1


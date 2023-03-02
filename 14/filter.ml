let rec filter_positive lst = match lst with
[] -> []
| first :: rest -> if first > 0 then first :: filter_positive rest
                                       else filter_positive rest


let rec filter p lst = match lst with
[] -> []
| first :: rest -> if p first then first :: filter p rest
                                     else filter p rest

let even n = n mod 2 = 0
let even_filter lst = filter even lst

let filter_A p = match p with
    {seiseki=s} -> s="A"

let count_A lst = filter filter_A lst


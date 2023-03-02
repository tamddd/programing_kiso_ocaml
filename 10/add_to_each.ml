let rec add_to_each n lst = match lst with
[] -> []
| first :: rest -> (n :: first) :: (add_to_each n rest)


let rec prefix lst = match lst with
[] -> []
| first :: rest -> [first] :: add_to_each first (prefix rest)




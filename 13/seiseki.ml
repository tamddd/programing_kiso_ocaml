
let rec count lst seiseki0 = match lst with
[] -> 0
| {seiseki: s} :: rest ->
  if s = seiseki0 then 1 + count rest seiseki0
                             else count rest seiseki0


let rec count_ketsueki lst ketsueki0 = match lst with
[] -> 0
| {ketsueki:k}::rest->
  if k=ketsueki0 then 1 + count_ketsueki rest ketsueki0
                        else count_ketsueki rest ketsueki0

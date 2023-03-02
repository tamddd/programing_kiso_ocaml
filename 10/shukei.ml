type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

let rec shukei lst = match lst with
[] -> (0, 0, 0, 0)
| {seiseki=s} :: rest ->
  let (a, b, c, d) = shukei rest in
  if s ="A" then(a+1, b, c, d)
                else if s="B" then (a, b+1, c, d)
                                   else if s = "C" then (a, b, c+1, d)
                                                        else (a, b, c, d+1)



type person_t = {
  namae : string;
  sincho : int;
  taiju : int;
  tanjobi : int;
  ketsueki : string;
}

let rec ketsueki_syukei lst = match lst with
[] -> (0, 0, 0, 0)
| {ketsueki=k} :: rest ->
  let (a, b, c, d) = ketsueki_syukei rest in
      if k="A" then (a+1, b, c, d)
      else if k="B" then (a, b+1, c, d)
      else if k="C" then (a, b, c+1, d)
                         else (a, b, c, d+1)



(*目的: 現在の気温tから快適度を表す文字列を計算する*)
(*kion: int -> string*)

(*let kion t =
  if t < 15 then "普通"
    else if t <= 25 then "快適"
      else "普通"*)

(*let kion t =
  if 15 <= t && t <= 25 then "快適"
    else "普通"*)

let kaiteki t =
  15 <= t && t <= 25

let kion t =
  if kaiteki t then "快適"
    else "普通"

let test1 = kion 7 = "普通"
let test2 = kion 15 = "快適"
let test3 = kion 20 = "快適"
let test4 = kion 25 = "快適"
let test5 = kion 28 = "普通"

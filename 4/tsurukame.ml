(*目的: 鶴の数を与えられたら、足の本数を返す*)
(*tsuru_no_ashi : int -> int*)
let tsuru_no_ashi tsuru = tsuru * 2

let test1 = tsuru_no_ashi 0 = 0
let test2 = tsuru_no_ashi 2 = 4
let test3 = tsuru_no_ashi 12 = 24

(*目的: 亀の数を与えられたら、足の本数を返す*)
(*kame_no_ashi : int -> int*)
let kame_no_ashi kame = kame * 4

let test1 = kame_no_ashi 0 = 0
let test2 = kame_no_ashi 12 = 48
let test3 = kame_no_ashi 3 = 12

(*鶴の数と亀の数を与えられたら、足の数の合計を返す*)
(*tsurukame_no_ashi : int -> int -> int*)
let tsurukame_no_ashi tsuru kame = tsuru_no_ashi tsuru + kame_no_ashi kame

let test1 = tsurukame_no_ashi 0 0 = 0
let test2 = tsurukame_no_ashi 2 3 = 16
let test3 = tsurukame_no_ashi 1 0 = 2

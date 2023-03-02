let rec append lst1 lst2 = match lst1 with
[] -> [lst2]
| first :: rest -> [first] :: append rest lst2


let rec merge lst1 lst2 = match (lst1, lst2) with
([], []) -> []
| ([], first2::rest2) -> lst2
| (first1 :: rest1, []) -> lst1
| (first1 :: rest1, first2 :: rest2) ->
  if first1 > first2 then first2 :: merge lst1 rest2
    else first1 :: merge rest1 lst2


let rec equal_length lst1 lst2 = match (lst1, lst2) with
([], []) -> true
| ([], first2::rest2) -> false
| (first1::rest1, []) -> false
| (first1::rest1, first2::rest2) ->
  equal_length rest1 rest2

let rec romaji_to_kanji romaji lst = match lst with
[] -> ""
| {romaji:r; kanji:k} :: rest ->
  if r=romaji then kanji
    else romaji_to_kanji romaji rest


let rec get_ekikan_kyori eki1 eki2 lst = match lst with
[] -> infinity
  | {kiten=ki; shuten=sh; kyori=kr} :: rest ->
    if (ki=eki1 && sh=eki2) || (ki=eki2 && sh=eki1)
                               then ky
                                 else get_ekikan_kyori eki1 eki2 rest

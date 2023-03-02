let twice f =
  let g x = f (f x)
      in g


(*
# let f x = x;;
val f : 'a -> 'a = <fun>



# let f x a b = b( x a);;
val f : ('a -> 'b) -> 'a -> ('b -> 'c) -> 'c = <fun>
*)

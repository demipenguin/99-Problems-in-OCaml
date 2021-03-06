(* Find the k'th element of a list. *)

let rec at k = function
  | [] -> None
  | hd :: tl -> if k = 1 then Some hd else at (k - 1) tl

let () = assert (at 3 [ "a" ; "b"; "c"; "d"; "e" ] = Some "c")
let () = assert (at 3 [ "a" ] = None)
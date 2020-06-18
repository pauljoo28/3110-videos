module type Sig = sig
  val f : int -> int
end

module M1 : Sig = struct
  let f x = x + 1
end

module M2 : Sig = struct
  let f x = x
end
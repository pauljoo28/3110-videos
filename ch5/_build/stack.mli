module type Stack = sig

  type 'a stack

  val empty : 'a stack
  val is_empty : 'a stack -> bool

  val push : 'a -> 'a stack -> 'a stack

  val peek : 'a stack -> 'a

  val pop : 'a stack -> 'a stack

end


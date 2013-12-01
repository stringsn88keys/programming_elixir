# Exercise: rewrite recursive list sum function without accumulator
defmodule MyList do
  def sum([]), do: 0
  def sum([head|tail]), do: sum(tail) + head
end

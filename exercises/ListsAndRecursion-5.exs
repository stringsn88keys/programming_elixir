defmodule Enum2 do
  def all?([head|[]], func), do: func.(head)
  def all?([head|tail], func), do: func.(head) && all?(tail, func)
end

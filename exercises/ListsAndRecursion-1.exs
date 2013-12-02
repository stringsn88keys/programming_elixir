defmodule MyList do
  def mapsum([], _), do: 0
  def mapsum([head|tail], fun), do: mapsum(tail, fun) + fun.(head)
end

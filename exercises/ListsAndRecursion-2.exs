defmodule MyList do
  def max(list), do: _max(list)
  defp _max([head|[head2|[]]]) when head >= head2, do: head
  defp _max([head|[head2|[]]]) when head < head2, do: head2
  defp _max([head|tail]), do: _max([head|[_max(tail)]])
end

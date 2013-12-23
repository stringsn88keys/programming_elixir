defmodule Enum2 do
  def all?([head|[]], func), do: func.(head)
  def all?([head|tail], func), do: func.(head) && all?(tail, func)

  def each([head|[]], func), do: func.(head)
  def each([head|tail], func), do: func.(head) && each(tail, func)

  def filter([head|[]], func) do
    if func.(head) do
      [head]
    else
      []
    end
  end
  def filter([head|tail], func) do
    if func.(head) do
      [head|filter(tail,func)]
    else
      filter(tail,func)
    end
  end
  def split(list, position) when position >= 0, do: _split_forward(list, position)
  def split(list, position) when position < 0, do: _split_backward(list, position)
  defp _split_forward(list, 0), do: {[], list}
  defp _split_forward([], _), do: {[], []}
  defp _split_forward([head|tail], position) do
    {list1, list2} = _split_forward(tail, position - 1)
    {[head|list1], list2}
  end
  defp _split_backward(list, position_backward) do
    {rlist1, rlist2} = _split_forward(Enum.reverse(list), - position_backward)
    {Enum.reverse(rlist2), Enum.reverse(rlist1)}
  end
  def take(list, count) when count >=0, do: _take_forward(list, count)
  def take(list, count) when count < 0, do: _take_backward(list, count)
  defp _take_forward(_, 0), do: []
  defp _take_forward([], _), do: []
  defp _take_forward([head|tail], n), do: [head|_take_forward(tail, n - 1)]
  defp _take_backward(list, n) do
    Enum.reverse(_take_forward(Enum.reverse(list), -n))
  end
end

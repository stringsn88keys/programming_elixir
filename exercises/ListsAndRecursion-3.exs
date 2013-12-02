defmodule MyList do
  def caesar(list, n), do: _caesar(list, n)
  defp _caesar([head|[]], n), do: [_rotn(head, n)]
  defp _caesar([head|tail], n), do: [_rotn(head, n) | _caesar(tail, n)]
  defp _rotn(char, n) when char + n <= ?z, do: char + n
  defp _rotn(char, n) when char + n > ?z, do: char + n - 26
end

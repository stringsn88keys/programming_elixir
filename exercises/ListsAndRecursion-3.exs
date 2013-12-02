defmodule MyList do

  def caesar(list, n), do: _caesar(list, n)
  defp _caesar([head|[]], n), do: [_rotn(head, n)]
  defp _caesar([head|tail], n), do: [_rotn(head, n) | _caesar(tail, n)]
  defp _rotn(char, n) when char in ?A..?Z do
    rem(char - ?A + n, 26) + ?A
  end
  defp _rotn(char, n) when char in ?a..?z do
    rem(char - ?a + n, 26) + ?a
  end
end

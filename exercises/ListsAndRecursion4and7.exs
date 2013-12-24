defmodule MyList do
  def span(from, to) when from <= to, do: [from | span(from + 1, to)]
  def span(from, to) when from > to, do: []
  def span(to, to), do: [to]

  # Simplest solution, but processes in O(n^2) time (n * (n + 1) / 2)
  def primes_to(n) do
    range = span(2, n)
    range -- (lc a inlist range, b inlist range, a <= b, a * b <= n, do: a * b)
  end

  # Brings processing back down to O(n) ((sqrt(n) * (sqrt(n)+1) / 2)
  def primes_up_to(n) do
    range = span(2, n)
    multiplicands = span(2, :math.sqrt(n) + 1)
    range -- (lc a inlist multiplicands, b inlist multiplicands, a <= b, a * b < n, do: a * b)
  end
end

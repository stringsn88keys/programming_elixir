# Added 6.3 Guard Clauses info as well
defmodule Math do
  def sum(1), do: 1
  def sum(n) when n > 1, do: n + sum(n-1)

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end

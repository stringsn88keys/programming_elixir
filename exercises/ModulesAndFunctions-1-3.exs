defmodule Times do
  def quadruple(n) do
    double(double(n))
  end
  def triple(n) do
    n * 3
  end
  def double(n) do
    n * 2
  end
end

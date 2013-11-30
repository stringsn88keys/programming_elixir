# The order of the output was the real mental blocker for me
defmodule Chop do
  def guess(number, range_low..range_high) do
    guess = div(range_low + range_high, 2)
    make_guess(number, guess, range_low..range_high)
  end
  def make_guess(number, guess, _low..high) when number > guess do
    IO.puts("Is it #{guess}")
    make_guess(number, div(guess + high, 2), guess+1..high)
  end
  def make_guess(number, guess, low.._high) when number < guess do
    IO.puts("Is it #{guess}")
    make_guess(number, div(guess + low, 2), low..guess-1)
  end
  def make_guess(number, number, _) do
    IO.puts("Is it #{number}")
    number
  end
end

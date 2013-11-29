fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

IO.puts fizz_buzz.(0, 0, 3) # "FizzBuzz"
IO.puts fizz_buzz.(3, 0, 3) # "Fizz"
IO.puts fizz_buzz.(0, 3, 3) # "Buzz"
IO.puts fizz_buzz.(1, 2, 3) # 3

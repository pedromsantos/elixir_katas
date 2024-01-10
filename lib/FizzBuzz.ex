defmodule FizzBuzz do
  def fizz_buzz(number) do
    case {rem(number, 3), rem(number, 5)} do
      {0, 0} -> "fizzbuzz"
      {0, _} -> "fizz"
      {_, 0} -> "buzz"
      _ -> to_string(number)
    end
  end
end

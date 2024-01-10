defmodule FizzBuzzShould do
  use ExUnit.Case
  use ExUnit.Parameterized

  test_with_params "convert multiples of 3 to 'fizz",
                   fn number ->
                     assert FizzBuzz.fizz_buzz(number) == "fizz"
                   end do
    [{3}, {6}, {9}]
  end

  test_with_params "convert multiples of 5 to 'buzz",
                   fn number ->
                     assert FizzBuzz.fizz_buzz(number) == "buzz"
                   end do
    [{5}, {10}, {20}]
  end

  test_with_params "convert multiples of 3 and 5 to 'fizzbuzz",
                   fn number ->
                     assert FizzBuzz.fizz_buzz(number) == "fizzbuzz"
                   end do
    [{15}, {30}, {45}]
  end

  test_with_params "convert non multiples of 3 and/or 5 to it's string representation",
                   fn number, expected ->
                     assert FizzBuzz.fizz_buzz(number) == expected
                   end do
    [{1, "1"}, {2, "2"}, {4, "4"}]
  end
end

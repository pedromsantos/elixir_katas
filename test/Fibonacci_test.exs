defmodule FibonacciShould do
  use ExUnit.Case
  use ExUnit.Parameterized

  test_with_params "fibonacci number for index",
                   fn number, expected ->
                     assert Fibonacci.fibonacci(number) == expected
                   end do
    [{0, 0}, {1, 1}, {2, 1}, {3, 2}, {4, 3}, {5, 5}, {6, 8}, {7, 13}, {12, 144}]
  end
end

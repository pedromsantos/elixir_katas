defmodule Fibonacci do
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1

  def fibonacci(index) do
    fibonacci(index - 1) + fibonacci(index - 2)
  end

  def fibonacci_optimized(index), do: fibonacci_optimized(index, 0, 1)
  def fibonacci_optimized(1, _, result), do: result
  def fibonacci_optimized(0, _, _), do: 0

  def fibonacci_optimized(index, acc1, acc2) do
    fibonacci_optimized(index - 1, acc2, acc1 + acc2)
  end
end

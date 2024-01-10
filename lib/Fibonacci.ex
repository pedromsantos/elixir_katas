defmodule Fibonacci do
  def fibonacci(index) when index == 0, do: 0
  def fibonacci(index) when index == 1, do: 1

  def fibonacci(index) do
    fibonacci(index - 1) + fibonacci(index - 2)
  end
end

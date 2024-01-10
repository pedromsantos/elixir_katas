defmodule Fibonacci do
  def fibonacci(index) when index == 0 do
    0
  end

  def fibonacci(index) when index == 1 do
    1
  end

  def fibonacci(index) do
    fibonacci(index - 1) + fibonacci(index - 2)
  end
end

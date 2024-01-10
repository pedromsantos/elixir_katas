defmodule LeapYear do
  def leap_year(year) do
    case {rem(year, 4) == 0, rem(year, 100) == 0, rem(year, 400) == 0} do
      {true, false, _} -> true
      {true, true, true} -> true
      {true, true, false} -> false
      {false, _, _} -> false
    end
  end
end

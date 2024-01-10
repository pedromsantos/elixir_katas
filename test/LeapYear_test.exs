defmodule LeapYearShould do
  use ExUnit.Case
  use ExUnit.Parameterized

  test_with_params "years divisible by 4 but not 100 are leap years",
                   fn number ->
                     assert LeapYear.leap_year(number) == true
                   end do
    [{4}, {8}, {12}, {1996}]
  end

  test_with_params "years divisible by 4, 100 and 400 are leap years",
                   fn number ->
                     assert LeapYear.leap_year(number) == true
                   end do
    [{400}, {800}, {1200}, {2000}]
  end

  test_with_params "years divisible by 4 and 100 but not by 400 are not leap years",
                   fn number ->
                     assert LeapYear.leap_year(number) == false
                   end do
    [{100}, {200}, {300}, {1900}]
  end

  test_with_params "years not divisible by 4 are not leap years",
                   fn number ->
                     assert LeapYear.leap_year(number) == false
                   end do
    [{1}, {2}, {3}, {2001}]
  end
end

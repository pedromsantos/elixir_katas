defmodule RomanNumeralsShouldShould do
  use ExUnit.Case
  use ExUnit.Parameterized

  test_with_params "roman numeral for arabic",
                   fn arabic, expected ->
                     assert RomanNumerals.romanNumeralFor(arabic) == expected
                   end do
    [
      {0, ""},
      {1, "I"},
      {2, "II"},
      {3, "III"},
      {4, "IV"},
      {5, "V"},
      {6, "VI"},
      {7, "VII"},
      {8, "VIII"},
      {9, "IX"},
      {10, "X"},
      {11, "XI"},
      {14, "XIV"},
      {39, "XXXIX"},
      {42, "XLII"},
      {44, "XLIV"},
      {53, "LIII"},
      {64, "LXIV"},
      {75, "LXXV"},
      {89, "LXXXIX"},
      {99, "XCIX"},
      {100, "C"},
      {101, "CI"},
      {400, "CD"},
      {421, "CDXXI"},
      {500, "D"},
      {599, "DXCIX"},
      {846, "DCCCXLVI"},
      {983, "CMLXXXIII"},
      {1000, "M"},
      {1999, "MCMXCIX"},
      {2008, "MMVIII"},
      {4000, ""}
    ]
  end
end

defmodule RomanNumerals do
  @arabicToRoman [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]

  def romanNumeralFor(0) do
    ""
  end

  def romanNumeralFor(arabic) when arabic > 3999 do
    ""
  end

  def romanNumeralFor(arabic) do
    {max_arabic, roman} = Enum.find(@arabicToRoman, fn {a, _} -> arabic >= a end)
    roman <> romanNumeralFor(arabic - max_arabic)
  end
end

defmodule Chebyshev.Expansion do

  @spec scaled_sine(number()) :: float()
  def scaled_sine(x) when is_number(x) and -1.0 <= x and x <= 1.0 do
    [
      1.133648177811748e+000,
      -1.380717765871921e-001,
      4.490714246554916e-003,
      -6.770127584215243e-005,
      5.891295330289310e-007,
      -3.338059408918617e-009,
      1.329702838448965e-011,
      -3.927499587179669e-014
    ]
    |> Enum.with_index()
    |> Enum.map(fn {f, n} -> {f, 2 * n + 1} end)
    |> Enum.map(fn {f, n} -> f * Chebyshev.Polynominal.of_1st_kind(n).(x) end)
    |> Enum.sum()
  end

  def scaled_sine(x) when is_number(x) and 1.0 < x and x <= 2.0 do
    scaled_sine(2.0 - x)
  end

  def scaled_sine(x) when is_number(x) and -2.0 <= x and x < -1.0 do
    scaled_sine(-2.0 - x)
  end

  def scaled_sine(x) when is_number(x) and 2.0 < x do
    scaled_sine(x - 4.0)
  end

  def scaled_sine(x) when is_number(x) and x < -2.0 do
    scaled_sine(x + 4.0)
  end
end

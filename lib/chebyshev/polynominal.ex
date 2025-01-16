defmodule Chebyshev.Polynominal do
  @spec of_2nd_kind(non_neg_integer()) :: (number() -> float())
  def of_2nd_kind(0), do: fn _ -> 1.0 end
  def of_2nd_kind(1), do: fn x -> 2.0 * x * of_2nd_kind(0).(x) end

  def of_2nd_kind(n) when is_integer(n) and n >= 2 do
    fn x ->
      2.0 * x * of_2nd_kind(n - 1).(x) - of_2nd_kind(n - 2).(x)
    end
  end
end

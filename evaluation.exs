for n <- 1..8, x <- -1000..1000 do
  {
    n,
    abs(Chebyshev.Expansion.scaled_sine(x / 1000, n) - :math.sin(x / 2000 * :math.pi()))
  }
end
|> Enum.chunk_by(fn {n, _} -> n end)
|> Enum.map(& Enum.map(&1, fn {_, v} -> v end))
|> Enum.map(& Enum.max(&1))
|> Enum.with_index(1)
|> IO.inspect()

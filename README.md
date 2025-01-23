# Chebyshev

Chebyshev series expansion of sine function.

## Error Evaluation

Evaluation of Error in the interval -1 to 1 for Chebyshev series expansion of sine function is as follows:

`{Maximum error, nth order approximation}`

```zsh
mix run -r evaluation.exs 
```

```elixir
[
  {0.14043432915303722, 1},
  {0.004546009673330964, 2},
  {6.823491231261469e-5, 3},
  {5.92274409849658e-7, 4},
  {3.3508459063025242e-9, 5},
  {1.3334944259923986e-11, 6},
  {3.9468428525424315e-14, 7},
  {4.440892098500626e-16, 8}
]
```

* f16: 9.765625e-4, 3
* f32: 1.1920928955078125e-7, 5
* f64: 2.220446049250313e-16, 9

defmodule FloatBreakdown do
  def break_up_float(float) do
    << sign::size(1), exp::size(11), mantissa::size(52) >> = << float::float >>
    [sign: sign, exp: exp, mantissa: mantissa ]
  end

  def assemble_float([sign: sign, exp: exp, mantissa: mantissa]) do
    (1 + mantissa / :math.pow(2,52)) * :math.pow(2, exp-1023) * (1 + sign * -2.0)
  end
end

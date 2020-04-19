defmodule Number do
  import Integer
  import Logger, only: [info: 1]

  def even?(num) do
    # using `Integer.is_even` function to check whether a number is even
    info "Is #{num} even? #{is_even(num)}"
  end

  def odd?(num) do
    info "Is #{num} odd? #{is_odd(num)}"
  end
end

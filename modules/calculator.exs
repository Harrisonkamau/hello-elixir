defmodule Calculator do
  import Logger, only: [info: 1]

  def add(a, b) do
    result = a + b
    info "The sum is: #{result}"
  end
end

Calculator.add(1, 2)

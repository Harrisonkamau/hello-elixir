defmodule MyList do
  import Enum, only: [map: 2]

  def map(list) do
    # return a list with squared items
    squares = map(list, &square/1)
    print(squares, "Mapped list")
  end

  # private function
  defp square(num) do
    num * num
  end

  defp print(list, label) do
    IO.inspect(list, label: label)
  end
end


MyList.map([1, 2, 3, 4])

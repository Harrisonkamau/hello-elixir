defmodule MyList do
  def map(list) do
    # return a list with squared items
    squares = Enum.map(list, &square/1)
    print(squares, "Mapped list")
  end

  def reduce(list) do
    total = Enum.reduce(list, 0, &sum/2)
    IO.puts total
  end

  # private function
  defp square(num) do
    num * num
  end

  defp print(list, label) do
    IO.inspect(list, label: label)
  end

  defp sum(x, y) do
    x + y
  end
end


nums = [1, 2, 3, 4]
MyList.map(nums)
MyList.reduce(nums)

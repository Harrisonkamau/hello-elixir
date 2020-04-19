defmodule List.Enum do
  import Logger, only: [info: 1]

  def first([]), do: nil
  def first([head | _]), do: info "First item in the list is: '#{head}'"
end

todos = ['Take Breakfast', 'Workout', 'Learn Elixir', 'Write some modules']
List.Enum.first(todos)

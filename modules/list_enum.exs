defmodule List.Enum do
  import Logger, only: [info: 1]

  def first([]) do
    nil
  end

  def first([head | tail]) do
    # return the first item in the list using the `head` (hd) buil-in list method
    info "First item in the list is: '#{head}'"
  end
end

todos = ['Take Breakfast', 'Workout', 'Learn Elixir', 'Write some modules']
List.Enum.first(todos)

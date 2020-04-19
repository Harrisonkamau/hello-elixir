defmodule TodoList do
  import Logger, only: [info: 1]

  def first([]) do
    nil
  end

  def first([head | _]) do
    info "First item is: '#{head}'"
  end
end

todos = ['Take Breakfast', 'Workout', 'Learn Elixir', 'Write some modules']

TodoList.first(todos) # 'Take Breakfast'


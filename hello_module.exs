defmodule HelloModule do
  import IO, only: [puts: 1]

  def say_hello do
    puts 'Hello, World!'
  end
end

HelloModule.say_hello

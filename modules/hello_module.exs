
defmodule HelloModule do
  import Logger, only: [info: 1]

  def say_hello do
    info 'Hello, World!'
  end
end

HelloModule.say_hello

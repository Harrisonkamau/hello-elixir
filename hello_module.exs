defmodule HelloModule do
  import IO, only: [puts: 1]

  def logger(param) do
    puts "Logging has started..."
    puts param
    puts "Logging has ended!"
  end

  def say_hello do
    logger 'Hello, World!'
  end
end

HelloModule.say_hello

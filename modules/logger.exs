defmodule Logger do
  import IO, only: [puts: 1]

  def info(message) do
    puts "[LOGGER - INFO]#{message}"
  end
end

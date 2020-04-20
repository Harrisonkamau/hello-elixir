defmodule User do
  import Logger, only: [info: 1]

  def print_name(name \\ "No Name"), do: info name
end

User.print_name("Harrison") # returns "Harrison"
User.print_name # returns "No Name"

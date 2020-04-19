defmodule List.Enum do
  import Logger, only: [info: 1]

  def first(list) do
    # return the first item in the list using the `head` (hd) buil-in list method
    info "First item in the list is: #{hd(list)}"
  end
end

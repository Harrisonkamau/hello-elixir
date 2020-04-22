defmodule TweetSender.FileReader do
  @doc """
  this function reads a sample tweets file randomly
  """
  import TweetSender.Strings.Enum, only: [pick_string: 1]

  def strings_to_tweet(path) do
    File.read!(path)
    |> pick_string
  end
end

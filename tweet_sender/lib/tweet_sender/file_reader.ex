defmodule TweetSender.FileReader do
  import TweetSender.Strings.Enum, only: [pick_string: 1]

  def strings_to_tweet(path) do
    File.read!(path)
    |> pick_string
  end
end

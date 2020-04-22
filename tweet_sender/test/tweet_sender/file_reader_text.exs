defmodule FileReaderTest do
  use ExUnit.Case
  import TweetSender.FileReader
  import TweetSender.Strings.Enum

  test "Passing a file should return a string" do
      str =
        strings_to_tweet(
          Path.join("#{:code.priv_dir(:tweet_sender)}", "tweets.txt")
        )

      assert str != nil
  end

  test "Does not return a tweet more than 40 characters long" do
    str =
      strings_to_tweet(
        Path.join("#{:code.priv_dir(:tweet_sender)}", "sample_tweets.txt")
      )

      assert str == "Hello world"
  end

  test "An empty string should return an empty string" do
    str = pick_string("")
    assert str == ""
  end
end

defmodule FileReaderTest do
  use ExUnit.Case, async: true
  import Mock
  import TweetSender.FileReader
  import TweetSender.Strings.Enum

  doctest TweetSender.FileReader

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
    with_mock File, [read!: fn(_) -> "" end] do
      str = pick_string("")
      assert str == ""
    end
  end

  test "the file string should be trimmed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = strings_to_tweet("A fake path.txt")

      assert str == "ABC"
    end
  end
end

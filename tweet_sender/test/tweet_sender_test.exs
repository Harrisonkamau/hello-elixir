defmodule TweetSenderTest do
  use ExUnit.Case
  doctest TweetSender

  test "greets the world" do
    assert TweetSender.hello() == :world
  end
end

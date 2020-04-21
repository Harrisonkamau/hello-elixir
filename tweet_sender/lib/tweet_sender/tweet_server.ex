defmodule TweetSender.TweetServer do
  use GenServer

  @moduledoc """
  server callbacks
    start_link/1
  """
  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :main_tweet_server)
  end

  def init(:ok) do
    # init state with an empty Map since this server doesn't care about states
    {:ok, %{}}
  end

  def handle_cast({ :tweet, tweet }, _) do
    TweetSender.Tweet.send(tweet)
    { :noreply, %{} }
  end

  def tweet(tweet) do
    # this method is registerd on line #13 as :tweet
    # this will help us make this call: `TweetSender.TweetServer.tweet
    GenServer.cast(:main_tweet_server, { :tweet, tweet })
  end

   @doc """
    Looks up the bucket pid for `name` stored in `server`.

    Returns `{:ok, pid}` if the bucket exists, `:error` otherwise.
    """
  def lookup(server, name) do
    GenServer.call(server, { :lookup, name })
  end
end

# check the server pid with:
# Process.whereis(:main_tweet_server)
# TweetSender.TweetServer.tweet("Hello, @ChegeHarrison")

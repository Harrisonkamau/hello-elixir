defmodule TweetSender.TweetServer do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :tweet_server)
  end

  def init(:ok) do
    # init state with an empty Map since this server doesn't care about states
    {:ok, %{}}
  end

  def handle_cast({ :tweet, tweet }) do
    TweetSender.Tweet.send(tweet)
    {:noreply, %{}}
  end

  def tweet(tweet) do
    # this method is registerd on line #13 as :tweet
    # this will help us make this call: `TweetSender.TweetServer.tweet
    GenServer.cast(:tweet_server, { :tweet, tweet })
  end
end

# Process.whereis(:tweet_server)
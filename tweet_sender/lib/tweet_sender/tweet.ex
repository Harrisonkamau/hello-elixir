defmodule TweetSender.Tweet do
  def send(tweet) do
    ExTwitter.configure(
      :process,
      consumer_key: System.get_env("TWITTER_API_KEY"),
      consumer_secret: System.get_env("TWITTER_API_SECRET"),
      access_token: System.get_env("TWITTER_ACCESS_TOKEN_KEY"),
      access_token_secret: System.get_env("TWITTER_ACCESS_TOKEN_SECRET")
    )

    ExTwitter.update(tweet)
  end
end

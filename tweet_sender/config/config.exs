use Mix.Config

config :tweet_sender, TweetSender.Scheduler, jobs: [
  { "* * * *", fn ->
    TweetSender.FileReader.strings_to_tweet(
      Path.join("#{:code.priv_dir(:tweet_sender)}", "tweets.txt")
    )
    |> TweetSender.TweetServer.tweet
  end }
]

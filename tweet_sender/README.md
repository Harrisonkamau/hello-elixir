# TweetSender
## Prerequisites
Create an app on Twitter
- Head over to Twitter developers [dashboard](https://developer.twitter.com/en/apps) and create an app. Grab these credentials:
  `API key`, `API secret key`, `API access token` and `API access token key` and save them as env variables as follows:

```sh
 export TWITTER_API_KEY=
 export TWITTER_API_SECRET=
 export TWITTER_ACCESS_TOKEN_KEY=
 export TWITTER_ACCESS_TOKEN_SECRET=
```

Add them to your  `~/.bash_profile` & then restart it with: `source ~/.bash_profile`

## Installation
Install app dependencies listed in `mix.exs` under the `deps` function by running:
`mix deps.get`


## Sending Tweet
**Compile and load modules**

Compile and load all the modules into the `iex` by running:
`iex -S mix`.

Load the `TweetSender.Tweet` module by running: `cd("lib/tweet_sender")`

**Send Tweet**

In the `iex` call, `TweetSender.Tweet.send("Your tweet string")` and then check your Twitter profile to check if it was sent.

## Scheduler
The Scheduler sends a random tweet, obtained from `priv/tweets.txt` every minute. Since the app runs on Supervisor, it can still send tweets if a Process is killed.

try this, by firing the `iex` and running these commands:
```elixir
# check the server pid
iex> Process.whereis(:main_tweet_server)

# Send tweet manually:
iex> TweetSender.TweetServer.tweet("Hello, world!")
# once you see the :ok - which means the server sent a tweet successfully,

# Kill the process
Process.whereis(:main_tweet_server) |> Process.exit(:kill)

# try resending the tweet
TweetSender.TweetServer.tweet("Hello, world!")

# the tweet should send since, if all goes well, the Supervisor should have restarted the Process already
```

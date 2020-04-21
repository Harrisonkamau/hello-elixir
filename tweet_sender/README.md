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

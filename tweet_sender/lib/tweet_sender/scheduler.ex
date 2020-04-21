defmodule TweetSender.Scheduler do
  use Quantum.Scheduler,
  otp_app: :tweet_sender
end

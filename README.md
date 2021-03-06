# Introduction to Elixir
All functions herein don't have a `return` keyword. Elixir, just like Ruby, returns the last statement in a fuction.

Also, `''` are not strings in Elixir, but `charlist` (List of characters). A true string in Elixir is denoted by double quotes: `""`. To verify this, fire up the Interactive Elixir console: `iex`:

```elixir
iex > i 'hello' # type is List
iex > i "hello" # type is String
```

### Running modules
```sh
# run hello_module.exs
elixir modules/hello_module.exs
```

### Imports
**What does this line do?**

```elixir
import Logger, only: [info: 1]
```

- `Import Logger` imports `Logger` module defined in `modules/logger.exs`.
- `only: [info]` - only import `info` function
- `info: 1` - Elixir way of saying that `info` function accepts one argument, otherwise known as `arity`

## TweetSender app
Check the [Tweet Sender README](https://github.com/Harrisonkamau/hello-elixir/blob/master/tweet_sender/README.md) to learn how to send tweets using a Mix app created under `tweet_sender` folder.

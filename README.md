# Introduction to Elixir

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

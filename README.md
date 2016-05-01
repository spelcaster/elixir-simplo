# Simplo

Simple web framework written in Elixir.

# Useful Commands

## Web Server

```shell
iex -S mix

# Elixir REPL

# start web server
> {:ok, _} = Plug.Adapters.Cowboy.http Simplo,[]

# stop web server
> Plug.Adapters.Cowboy,shutdown Simplo.HTTP
```

## Insert new user

```shell
iex -S mix

# Elixir REPL
> Simplo.Repo.start_ink
> user = %User{id: 2, first_name: "Elixir", last_name: "Lang"}
> Simplo.Repo.inser!(user)
```
## Run unit test

```shell
mix test
```

# Reference

- [Building a web framework from scratch in Elixir](https://codewords.recurse.com/issues/five/building-a-web-framework-from-scratch-in-elixir)


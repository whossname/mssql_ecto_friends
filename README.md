# Friends

A sample application demonstrating [MssqlEcto](https://github.com/findmypast-oss/mssql_ecto) (Microsoft [SQL Server](https://hub.docker.com/r/microsoft/mssql-server-linux/) + Elixir's [Ecto](https://github.com/elixir-ecto/ecto))

Based on: https://github.com/elixir-ecto/ecto/tree/master/examples/friends

## Setup

Requires Docker to be installed.

```bash
./setup_db.sh
mix setup
```

Interact with iex:

```bash
$ iex -S mix
iex> Friends.Repo.all Friends.Person
```

# XqlTest

This is an application that was built to help test the `MyXQL` database driver for the `Ecto` project.
This is mostly a standard elixir application, it assumes that you have MySQL 5.7 installed.
In order to setup the database, run:

```
./db_setup.sh && mix ecto.create
```

It also uses `asdf` to manage elixir versions which might also be desirable.

# LEARNING Migration

## Installation

To install the library and command line program, use the following:

```bash
go get -v github.com/rubenv/sql-migrate/...
```

## Usage

```
$ sql-migrate --help
usage: sql-migrate [--version] [--help] <command> [<args>]

Available commands are:
    down      Undo a database migration
    new       Create a new migration
    redo      Reapply the last migration
    skip      Sets the database level to the most recent version available, without running the migrations
    status    Show migration status
    up        Migrates the database to the most recent version available
```

The `table` save logs version is `migrations`.

The environment that will be used can be specified with the `-env` flag (defaults to `development`).

Use the `--help` flag in combination with any of the commands to get an overview of its usage

## Example Migration

### create migrate

run this command `sql-migrate new {name}`

### up migrate

- run migration (development) run this command `sql-migrate up`
- run migration (production) run this command `sql-migrate up -env=production`

## Example DB Docs

Prerequisite: Make sure NodeJS and NPM have been installed on your computer before the installation.

1. Install dbdocs via terminal

```bash
npm install -g dbdocs
```

3. Login to dbdocs

```bash
dbdocs login
```

3. Generate dbdocs

```bash
dbdocs build doc/db.dbml
```

4. Convert a DBML file to SQL

```bash
npm install -g @dbml/cli
dbml2sql --mysql -o ./doc/schema.sql ./doc/schema.dbml
```

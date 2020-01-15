# Techdiary

Test project.

## Dependencies

* Ruby 2.6.5

* Rails 6.0.2

* PostgreSQL 9.5

## Quick Start

```bash
# clone repo
git clone git@github.com:EvgeniyEsaulkov/techdiary.git
cd repo

# run setup script
bin/setup

# configure ENV variables in .env
cp .env.example .env
vim .env

# run server on 5000 port
bin/server
```

## Scripts

* `bin/setup` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman and rails_best_practices for the app
* `bin/test` - should be used in the CI to run specs

## Production

* https://shielded-waters-54778.herokuapp.com/

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "pg"
gem "rails", "~> 6.0.2", ">= 6.0.2.1"

gem "coffee-rails"
gem "devise"
gem "jbuilder"
gem "puma"
gem "sass-rails", ">= 6"
gem "slim"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  gem "brakeman", require: false
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "coffeelint"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails", "~> 3.5"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "scss_lint", require: false
  gem "slim_lint", require: false
end

group :development do
  gem "listen"
  gem "slim-rails"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "database_cleaner"
  gem "email_spec"
  gem "formulaic"
  gem "guard-rspec"
  gem "launchy"
  gem "poltergeist"
  gem "rspec-its"
  gem "shoulda-matchers"
  gem "terminal-notifier-guard"
  gem "webmock", require: false
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

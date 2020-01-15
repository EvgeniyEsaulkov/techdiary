RSpec.configure do |config|
  DatabaseCleaner.allow_remote_database_url = true

  config.before(:suite) do
    DatabaseCleaner.clean_with(:deletion)
  end

  config.before do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :deletion
  end

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end

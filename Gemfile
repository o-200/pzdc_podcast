source "https://rubygems.org"

gem "rails", "8.0.2"
gem "puma", ">= 5.0"
gem "sqlite3", ">= 1.4"

gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails", "~> 2.0"
gem "stimulus-rails"
gem "jbuilder"
gem "cssbundling-rails", "~> 1.4"

gem "foreman", "~> 0.88.1"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "~> 7.1.1"
  gem "faker", "~> 3.5"
  gem "factory_bot_rails"
  gem "database_cleaner-active_record", "~> 2.2"
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.7.0", platforms: [ :ruby ]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# gem "pagy", "~> 9.3"

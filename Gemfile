source 'https://rubygems.org'

ruby '3.1.6' # Using the latest Ruby version mentioned

gem 'pg' # Using the latest PostgreSQL version mentioned
gem 'rails', '~> 7.1.3', '>= 7.1.3.4' # Keeping the same Rails version

gem 'jquery-rails'
gem 'turbolinks'

# The original asset pipeline for Rails
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server
gem 'puma', '>= 5.0'

# Use JavaScript with ESM import maps
gem 'importmap-rails'

# Bundle and transpile JavaScript
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator
gem 'turbo-rails'

# Hotwire's modest JavaScript framework
gem 'stimulus-rails'

# Use Tailwind CSS
gem 'tailwindcss-rails'

# Build JSON APIs with ease
gem 'jbuilder'

# Authentication solution
gem 'devise', '>= 4.8'

# Figaro for environment variables
gem 'figaro', '>= 1.2'

# System testing and integration testing tools
gem 'super_diff'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#
# gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

gem 'error_highlight', '~> 0.3.0'

group :development, :test do
  # Use RSpec for testing
  gem 'rspec-rails', '~> 6.0'
  # Debugging
end

group :development do
  # Use console on exceptions pages
end

group :test do
  # System testing
  gem 'capybara'
  gem 'selenium-webdriver'
end

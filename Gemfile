source 'https://rubygems.org'

ruby file: '.ruby-version'

gem 'rails', '~> 7.1.3', '>= 7.1.3.3'

gem 'bootsnap', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'importmap-rails' # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'jbuilder' # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection'
gem 'pg', '~> 1.1' # Use postgresql as the database for Active Record
gem 'propshaft' # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'puma', '>= 5.0' # Use the Puma web server [https://github.com/puma/puma]
gem 'redis', '>= 4.0.1' # Use Redis adapter to run Action Cable in production
gem 'stimulus-rails' # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'turbo-rails' # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
end

group :development do
  gem 'web-console' # Use console on exceptions pages [https://github.com/rails/web-console]
  # gem "rack-mini-profiler" # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "spring" # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
end

group :test do
  gem 'database_cleaner-active_record'
  gem 'simplecov', require: false
end

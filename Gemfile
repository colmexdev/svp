source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
#gem "activesupport", ">= 5.2.4.3"
#gem "rack", ">= 2.1.4"
#gem "puma", ">= 3.12.6"
# Use mysql as the database for Active Record
gem 'pg'
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem 'jquery-rails'
gem 'httparty'
gem 'nokogiri'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
#gem "rails-uikit", git: 'https://github.com/nicbet/rails-uikit.git'
gem 'bootstrap', '~> 4.3.1'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'trix-rails', require: 'trix'
gem 'devise'
gem 'mini_magick'
gem 'image_processing', '~> 1.2'
gem 'file_validators'
gem 'remotipart', '~> 1.2'
gem 'flatpickr_rails'

#gem 'selenium-webdriver'
gem 'webdrivers'

gem 'tiny_tds', '1.3.0'
gem 'activerecord-sqlserver-adapter'
gem 'active_directory'
gem "paperclip", "~> 6.0.0"

gem 'capistrano', '~> 3.11.0'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1.1'
gem 'capistrano-rbenv', github: "capistrano/rbenv"

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  #gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  #gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

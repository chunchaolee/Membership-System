source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Essential gems
ruby '2.4.4'
gem 'rails', '~> 5.2.0'
gem 'devise'
gem 'kaminari'
gem 'ffaker'

# Database
# gem 'mysql2', '0.4.4'

# Upload
gem 'carrierwave'
gem 'mini_magick', '~> 4.8'

# Front End
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'mini_racer'
gem 'execjs'
gem 'bootsnap'
gem 'bootstrap'

group :development, :test do
  gem 'sqlite3'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'shoulda'
  gem 'pry'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
end

group :development do
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '~> 0.20'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

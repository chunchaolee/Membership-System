source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Essential gems
ruby '2.4.4'
gem 'rails', '~> 5.2.0'
gem 'devise'
gem 'cancancan'
gem 'kaminari'
gem 'ffaker'

# Database
gem 'mysql2', '0.4.4'

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

gem 'bootsnap'

group :development, :test do
  gem 'rspec-rails'
  gem 'pry'
end

group :development do
  gem "capistrano"
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'sqlite3', '~> 1.4'

gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bcrypt', '~> 3.1.7'
gem 'jwt'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'
gem 'activestorage-backblaze'
gem 'bcrypt', '~> 3.1.7'
gem 'cssbundling-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pagy', '~> 6.0' # omit patch digit
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.3'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'bitmask_enum'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false
gem 'image_processing', '~> 1.2'

group :development, :test do
  # gem 'debase', require: false
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'ruby-debug-ide', require: false
  gem 'solargraph', require: false
end

group :development do
  gem 'letter_opener'
  gem 'web-console'

  gem 'bcrypt_pbkdf', '~> 1'
  gem 'capistrano', '~> 3.11'
  gem 'capistrano-asdf'
  gem 'capistrano-maintenance', '~> 1.2', require: false
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rails', '~> 1.4'
  gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'
  gem 'ed25519', '~> 1.2'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

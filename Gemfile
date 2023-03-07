# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.1"
gem "bootsnap", require: false
gem "brakeman"
gem "bundler-audit"
gem "image_processing", "~> 1.12"
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.4"
gem "puma", "~> 6.1"
gem 'rack-cors'
gem "rails", "~> 7.0.4"
gem "redis", "~> 5.0"
gem "rubocop-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "debug", "1.7.1", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
  gem "rubocop-rspec"
end

group :development do
  gem "rack-mini-profiler"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

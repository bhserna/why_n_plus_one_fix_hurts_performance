source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.0.alpha2"

gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jbuilder", "~> 2.7"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", ">= 1.4.4", require: false

gem "rexml"
gem "ffaker"
gem "rack-mini-profiler", ">= 2.3.3"
gem 'memory_profiler'
gem 'stackprof'
gem 'importmap-rails'
gem 'hotwire-rails'

group :development, :test do
  gem "debug", ">= 1.0.0", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
end

group :test do
  gem "factory_bot_rails"
end

group :development do
  gem "web-console", ">= 4.1.0"
end

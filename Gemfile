source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
gem 'rails', '~> 5.2.4', '>= 5.2.4.5'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

# ===============================================================
#                      we added these gems
# ===============================================================

gem 'devise'
gem 'rails_admin'
gem 'faker'
gem 'rubocop', require: false
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem "faraday", "~> 1.4.1"

gem 'hirb'
gem 'cancancan'
# gem 'pg'
gem 'multiverse'
gem 'rails_admin_import', '~> 2.2'

gem 'chartkick'
gem 'groupdate'
gem 'figaro'
gem 'slack-notifier'
gem 'date'
gem 'sendgrid-ruby'
gem 'ibm_watson'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'

# gem "zendesk_api"
gem "dropbox-api"
gem 'gmaps4rails'

gem "twilio-ruby"
# twilio
gem 'dropbox_api'

gem 'rspec', '~> 3.0'

gem 'newrelic_rpm'



# ===============================================================
# ===============================================================


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 5.0.0'
  
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'rvm1-capistrano3', require: false
  gem 'capistrano3-puma'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'underscore-rails', '~> 1.8', '>= 1.8.3'




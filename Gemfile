source 'https://rubygems.org'

#ruby-gemset=shine

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :test do
  # rspec-rails is a testing framework for Rails 3.x and 4.x.
  gem 'rspec-rails'

  # Poltergeist is a driver for Capybara
  # It allows you to run your Capybara tests on a headless WebKit browser,
  # provided by PhantomJS.
  gem 'poltergeist'

  # Database Cleaner is a set of strategies for cleaning your database in Ruby
  gem 'database_cleaner'

  # gem 'phantomjs', path: './vendor/phantomjs-gem'
  gem 'phantomjs', :require => 'phantomjs/poltergeist'

end

group :development do
  # Bundler-like DSL + rake tasks for Bower on Rails
  gem 'bower-rails'

  # Teaspoon is a Javascript test runner built for Rails
  gem 'teaspoon-jasmine'
  
  gem 'travis'
end

gem 'devise'

 # A library for generating fake data such as names, addresses, and phone numbers
gem 'faker' 

# Use your angular templates with rails' asset pipeline 
gem "angular-rails-templates"

# version 3.x breaks angular-rails-templates
gem "sprockets", "~> 2.0" 

group :production do
  gem 'rails_12factor', '0.0.2'
end


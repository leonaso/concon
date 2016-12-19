source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '4.1.4'
ruby '2.3.1'
gem 'rails', '>= 5.0.0.1'
gem 'bcrypt', '>= 3.1.7'
gem 'bootstrap-sass', '>= 3.3.6'
gem 'sprockets'
gem 'bcrypt-ruby'
gem 'will_paginate', '3.1.5'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'faker'

gem 'puma', '>= 3.4.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 3.0.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '>= 4.2.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '>= 4.1.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '>= 5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '>= 2.5.0'

# bundle exec rake doc:rails generates the API under doc/api.

group :doc do
  gem 'sdoc', '~> 0.4.0'          
end

group :development, :test do
# Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.12'
# Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '9.0.0', platform: :mri

  gem 'rspec-rails'
# The following optional lines are part of the advanced setup.
  gem 'guard-rspec'
#  gem 'spork-rails'
  gem 'guard-spork'
  gem 'childprocess'
# Use debugger
#  gem 'debugger'
# Use ActiveModel has_secure_password  
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'cucumber-rails',  :require => false
  gem 'database_cleaner'

  # Uncomment this line on OS X.
  # gem 'growl', '1.0.3'

  # Uncomment these lines on Linux.
  gem 'libnotify'

  # Uncomment these lines on Windows.
  # gem 'rb-notifu', '0.0.4'
  # gem 'wdm', '0.1.0'
  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem   'pg',    '0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#gem 'spring',        group: :development

# Use ActiveModel has_secure_password  
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


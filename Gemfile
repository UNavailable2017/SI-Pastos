source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# devise for login
gem 'devise'
# generate pdf
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
# omniauth Facebook, Google and twitter
gem 'omniauth-facebook', '~> 4.0.0'
gem 'omniauth-google-oauth2'
gem 'omniauth-oauth2'
gem 'omniauth-twitter'
# materialize
gem 'materialize-sass'
# font-awesome
gem 'font-awesome-rails'
# materialize icons
gem 'material_icons'
# paginate
gem 'will_paginate'
# variables enviroment entorn
gem 'figaro'
# for statistics
gem 'chartkick'
# jquery
gem 'jquery-rails'
gem 'jquery-turbolinks'
# annotate
gem 'annotate'
# for generate model
gem 'railroady'
# convert number to string words
gem 'to_words'
# maps
gem 'geocoder'
gem 'gmaps4rails'
#  Faker for populate the Database:
gem 'faker'
# for statistics
gem 'groupdate'
# to upload files
gem 'carrierwave', '~> 1.0'
gem 'fog-aws'
gem 'mini_magick'
# quill for masive emails
gem 'quilljs-rails'
# underscore
gem 'underscore-rails'
# translate routes
gem 'rails-i18n'
gem 'route_translator'
# best alert
gem 'rails-assets-sweetalert2', '~> 5.1.1', source: 'https://rails-assets.org'
gem 'sweet-alert2-rails'
# Use for active jobs
gem 'resque'


# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

end

group :development do
  gem 'brakeman', require: false

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

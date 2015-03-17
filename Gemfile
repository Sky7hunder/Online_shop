source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0.rc3'
# Use postgresql as the database for Active Record
group :development, :test do
  gem 'sqlite3'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Active admin integration
gem 'inherited_resources'
gem 'activeadmin', github: 'activeadmin'
gem 'devise'
# Add a comment summarizing the current schema
gem 'annotate'
# This extension provides the capabilities for sorting and reordering a number of objects in a list.
gem 'acts_as_list'
gem 'kaminari'
gem 'carrierwave'
gem 'cloudinary'
group :production do
  gem 'pg'
  gem 'rails_12factor'
  # Use delayed_job gem for background jobs
  gem 'delayed_job'
  # Use the active record backend for delayed jobs
  gem 'delayed_job_active_record'
end
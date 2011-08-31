source 'http://rubygems.org'

gem "rails", :git => 'https://github.com/rails/rails.git', :branch => '3-1-stable'

# database
gem 'sqlite3'

# javascript
gem 'json'
gem 'jquery-rails'

# markup / templates
gem 'rdiscount', '~> 1.6.8'
gem 'haml', '~> 3.1.2'

# authentication
gem 'devise', '~> 1.4.2'

# thin controllers
gem 'responders', '~> 0.6.4'
gem 'has_scope', '~> 0.5.1'
gem 'inherited_resources', '~> 1.2.2'

# forms
gem 'simple_form', '~> 1.4.2'

# paging
gem 'kaminari', '~> 0.12.4'

# Sorting
gem 'acts_as_list', '~> 0.1.2'

# image uploads
gem 'carrierwave', '~> 0.5.7'
gem 'fog', '~> 0.10.0'
gem 'mini_magick', '~> 3.3'

group :development, :test do
  # generators
  gem 'haml-rails', '~> 0.3.4'

  gem 'rspec-rails', '~> 2.6.1'
  gem 'shoulda', '~> 2.11.3'
  gem 'capybara', '~> 1.0.1'
  gem 'factory_girl_rails', '~> 1.1.0'
  gem 'spork', '~> 0.9.0.rc'
  gem 'database_cleaner', '~> 0.6.7'

  #gem 'watchr', '~> 0.7'
  gem 'guard', '~> 0.6.2'
  gem 'guard-rspec', '~> 0.4.2'
  gem 'guard-spork', '~> 0.2.1'
  gem 'growl_notify', '~> 0.0.1'

  # heroku tasks
  gem 'heroku_san'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', :git => 'https://github.com/rails/sass-rails.git', :branch => '3-1-stable'
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end
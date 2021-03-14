source 'http://rubygems.org'

gem 'rails', '4.2.11.3'

# Heroku's web server
gem 'unicorn'

# Javascript
gem 'json', '~> 1.6'
gem 'jquery-rails', '~> 2.0'

# Markup / templates
gem 'rdiscount', '~> 1.6'
gem 'haml', '~> 3.1'

# Authentication
gem 'devise', '~> 3.4.0'
gem 'devise-token_authenticatable', '~> 0.3.0'

# Responders
gem 'responders', '~> 2.0'

# Ordering
gem 'acts_as_list', '~> 0.1'

gem 'kaminari'

# Forms - TODO: Switch to a stable gem once the wrapper stuff is released.
gem 'simple_form', '~> 3.5.1'

# Image uploads
gem 'rack-cache', :require => 'rack/cache'
gem 'dragonfly', '~> 0.9'
gem 'fog', '~> 0.1'
gem 'dalli'

gem 'newrelic_rpm', '~> 3.4'

# Scaling
gem 'daemons'
gem 'delayed_job', '~> 4.1'
gem 'delayed_job_active_record', '~> 4.1'
gem 'hirefireapp'

# Factory
# Use Illuminated Glass theme
gem 'illuminatedglass-theme', :git => "git://github.com/akappen/illuminatedglass-theme.git"
# gem 'illuminatedglass-theme', :path => "../illuminatedglass-theme"

gem 'factory_girl_rails', '~> 1.7'

# Gems used only for assets and not required
# In production environments by default.
gem 'sass-rails',   '~> 4.0'
gem 'coffee-rails', '~> 4.0'
gem 'uglifier', '>= 1.0'
gem 'execjs', '1.3' # Remove once execjs v1.3.2 or 1.3.1.1

group :development, :test do
  # Database
  # gem 'sqlite3'

  # Rspec
  gem 'rspec-rails', '~> 4.0'
end

group :development do
  # Generators
  gem 'haml-rails', '~> 0.3'

  # Deploy (for environments other than heroku)
  gem 'capistrano'
end

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8', :require => false

  # Shoulda
  gem 'shoulda', '~> 2.11'

  # Cleanup
  gem 'database_cleaner', '~> 0.8'
end

# Database
gem 'pg', '~> 0.15'

source 'https://rubygems.org'
ruby '2.3.3'
gem 'rails', '~> 5.1.4'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# ENGINES
gem 'slack', path: 'engines/slack'

# APP
gem 'active_record_query_trace'
gem 'activerecord-session_store'
gem 'autoprefixer-rails'
gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'devise'
gem 'figaro'
gem 'font-awesome-rails'
gem 'haml-rails'
gem 'jquery-rails'
gem 'meta-tags'
gem 'omniauth'
gem 'omniauth-slack'
gem 'pg', '~> 0.18'
gem 'sass-rails'
gem 'sitemap_generator'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'versionist'

# API
# gem 'virtus'

# OPS
# gem 'airbrake', '< 6.2.0'

# WILL EVENTUALLY NEED
# gem 'rack-cors', require: 'rack/cors'
# gem 'rack-ssl-enforcer'

# TODO: May use passenger instead of puma
# gem 'puma', '~> 3.7'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# gem 'cancan'
# gem 'rolify'

group :development do
  gem 'awesome_print'
  gem 'binding_of_caller'
  gem 'bond'
  # TODO: Uncomment when ready to deploy
  # gem 'capistrano'
  # gem 'capistrano-bundler'
  # gem 'capistrano-passenger'
  # gem 'capistrano-rails'
  # gem 'capistrano-rbenv'
  # gem 'capistrano-service'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-byebug'
  gem 'rails-erd'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-commands-rubocop'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'tqdm'
end

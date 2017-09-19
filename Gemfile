source 'https://rubygems.org'
ruby '2.3.3'
gem 'rails', '~> 5.1.4'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# APP
gem 'active_record_query_trace'
gem 'autoprefixer-rails'
gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'font-awesome-rails'
gem 'haml-rails'
gem 'jquery-rails'
gem 'meta-tags'
gem 'pg', '~> 0.18'
gem 'sass-rails'
gem 'sitemap_generator'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# API
# gem 'active_model_serializers', '~> 0.10.4'
# gem 'faraday'
# gem 'faraday_middleware'
# gem 'versionist'
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
# gem 'devise'
# gem 'rolify'

group :test, :development do
  gem 'awesome_print'
  gem 'binding_of_caller'
  gem 'bond'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'pry-byebug'
  # gem 'quiet_assets'
  gem 'rails-erd'
  gem 'spring'
  gem 'tqdm'
end

group :development do
  # TODO: Uncomment when ready to deploy
  # gem 'capistrano'
  # gem 'capistrano-bundler'
  # gem 'capistrano-passenger'
  # gem 'capistrano-rails'
  # gem 'capistrano-rbenv'
  # gem 'capistrano-service'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-commands-rubocop'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # gem 'web-console'
end

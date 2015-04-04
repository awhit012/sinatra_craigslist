source "https://www.rubygems.org"

ruby "2.1.2"

gem 'sinatra'
gem 'shotgun'
gem 'rake'
gem 'activerecord'
gem 'sinatra-activerecord' # excellent gem that ports ActiveRecord for Sinatra

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg' # this gem is required to use postgres on Heroku
end
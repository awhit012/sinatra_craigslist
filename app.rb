require 'bundler/setup'
require 'sinatra/activerecord'
require './config/environment'
Bundler.require(:default)

$LOAD_PATH.unshift(File.expand_path('.'))

Dir["app/routes/*.rb"].each do |file_to_load|
  require file_to_load
end

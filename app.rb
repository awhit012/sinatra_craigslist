require 'bundler/setup'
require 'sinatra/activerecord'
require './config/environments'
Bundler.require(:default)

$LOAD_PATH.unshift(File.expand_path('.'))

Dir["routes/*.rb"].each do |file_to_load|
  require file_to_load
end
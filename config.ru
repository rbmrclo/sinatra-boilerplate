require 'compass'
require 'rubygems'
require 'shotgun'
require 'dalli'
require 'rack-cache'
require 'sinatra'
require 'rack-livereload'
require 'sass'
require 'haml'
require './app'

set :run, false
set :raise_errors, true

use Rack::LiveReload

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end


# heroku addons:add memcached
if memcache_servers = ENV["MEMCACHE_SERVERS"]
  use Rack::Cache,
    verbose: true,
    metastore:   "memcached://#{memcache_servers}",
    entitystore: "memcached://#{memcache_servers}"
end

map '/' do
  run App
end

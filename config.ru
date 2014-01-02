require 'compass'
require 'rubygems'
require 'shotgun'
require 'sinatra'
require 'sass'
require 'haml'
require './app'

set :run, false
set :raise_errors, true

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

run Sinatra::Application

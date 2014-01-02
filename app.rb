set :haml, :format => :html5
# set :static_cache_control, [:public, max_age: 60 * 60 * 24 * 365]
set :public_folder, Proc.new { File.join(root, "static") }

get '/' do
  haml :index
end

get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass(:"stylesheets/#{params[:name]}", Compass.sass_engine_options)
end

get '/javascripts/:name.js' do
  content_type 'text/javascript'
  coffee :"javascripts/#{params[:name]}"
end

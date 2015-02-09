require 'sinatra'

require './greeter'

before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  raise "tag must not be anything but 'life'" if params[:tag] != 'life'
  @greeter.quote params[:tag]
end

# default /quote route
get '/quote' do
  @greeter.quote
end

get '/photo' do
  send_file File.expand_path("#{rand(1..4)}.jpg", settings.public_folder)
end

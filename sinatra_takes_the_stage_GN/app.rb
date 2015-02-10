require 'sinatra'
require 'sinatra/reloader'
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

require './greeter'
also_reload './greeter.rb'

before do
  @greeter = Greeter.new
end


get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
@greeter.quote params[:tag].to_sym
end

get'/photo' do
# @greeter.picture
x = 1 + rand(4)
 send_file "./public/#{x}.jpg"
 end	



# default /quote route
# get '/quote' do
#   @greeter.quote
# end
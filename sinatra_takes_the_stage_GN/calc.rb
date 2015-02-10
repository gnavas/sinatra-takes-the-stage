require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get '/add/:num1/:num2' do
x = params[:num1].to_i+params[:num2].to_i
 "The sum is #{x}"
end 	

get '/sub/:num1/:num2' do
y = params[:num1].to_i - params[:num2].to_i
"#{y}"
end

get '/mult/:num1/:num2' do
z = params[:num1].to_i * params[:num2].to_i
"#{z}"
end


get '/div/:num1/:num2' do

begin
"#{params[:num1].to_i / params[:num2].to_i}"
rescue Exception
"Error"
end

end

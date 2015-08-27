require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@current_time = Time.new.strftime("Today is %A, %d of %B.")
	erb :index
end

post "/say_my_name" do
	"Hello, my name is #{params[:my_text]}!"
end


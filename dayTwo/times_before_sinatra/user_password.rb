require 'sinatra'
require 'sinatra/reloader'
require 'pry'

enable :sessions

users_data = {
  "felipe" => "1234",
  "llorenc" => "1234"
}


get '/' do
  erb :user_password
end

post '/valid?' do
  username = params[:user]
  password = params[:password]
  if users_data[username] == password
    redirect to("/#{username}")
  else
    redirect to("session/:username")
  end
end

get '/:username' do
    @greeting = "Welcome #{params[:username]}"
end

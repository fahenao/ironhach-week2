require 'sinatra'
require 'sinatra/reloader'
require 'pry'

enable :sessions

get '/' do
  erb :to_do
end
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative './movie_lovers.rb'

parser = MovieLovers.new 

get '/' do
  erb :movie_lovers
end

post '/imdb_search' do
  parser.get_poster(params[:user_input])
  redirect to("/poster_result")
end

get '/poster_result' do
  @url = parser.posters
  erb :movie_lovers
end
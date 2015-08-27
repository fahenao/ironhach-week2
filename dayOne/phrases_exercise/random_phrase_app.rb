require 'sinatra'
require 'sinatra/reloader'
require_relative './random_phrase.rb'

my_parser = RandomPhrase.new

get '/' do
  @my_random_phrase = my_parser.random_phrase
  @phrases = my_parser.phrase_array
  erb :sinatra_index
end

post '/add_phrase' do
  @new_phrases = my_parser.add_to_array("#{params[:phrase]}")
  redirect to('/')
end

get '/added_post' do
    @array = my_parser
end
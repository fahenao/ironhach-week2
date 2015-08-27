require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/file_counter.rb'

get '/' do
	erb :upload_file
end

post '/counter'  do
	tempfile = params[:file][:tempfile]
	count_file = FileManager.new(tempfile)
	"Uploaded file have #{count_file.count_words} words!"
end
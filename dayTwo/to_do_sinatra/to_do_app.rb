require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative './to_do.rb'
enable :sessions

todo_list = ["Do laundry", "Walk the dog", "Go to the Mercadona"]

get '/' do
  @list = todo_list
  erb :to_do
end

post '/add_new' do
  new_task = params[:new_task]
  todo_list.push(params[:new_task])
  redirect to("/")
end
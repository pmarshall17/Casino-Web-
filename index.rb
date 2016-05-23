require 'sinatra'
require 'pry'

get '/' do
	erb :main_menu
end

get '/entrees' do
	erb :entrees
end


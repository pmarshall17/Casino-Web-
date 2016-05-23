require 'sinatra'
require 'pry'

get '/' do
	erb :entrees
end

get '/checkout' do
	erb :checkout
end

get 'final_total' do
	erb :final_total

end

post '/checkout' do 
	@total = 0.00
	@menu = {Cheeseburger: 4.00, Fries: 1.50, Hot_Dog: 3.00, Garden_Salad: 2.00, Pasta: 7.00, Mixed_Vegetables: 2.00, Chicken_Sandwhich: 6.00, Mashed_Taters: 3.00}
	@selection = params.keys
	@selection.each do |selection|
		@total += @menu[selection.to_sym]
	end 
	erb :final_total
end



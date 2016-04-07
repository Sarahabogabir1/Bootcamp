require "sinatra"
requre "sina"
require_relative "lib/calculator.rb"

get "/" do
  erb(:add)
end

post "/calculate_add" do
	@first= params[:first_number].to_f #do I nedd to_i? to convert it back to an integer
	@second= params[:second_number].to_f
	@symbol= params[:symbol]  
	values = Calculator.new(@first,@second)



	# 	if values == "add"
	# 		calculator.add(@first,@second)
	# 	elsif values == "subtract"
	# 		calculator.subtract(@first,@second)
	# 	elsif values =="multiply"
	# 		calculator.multiply(@first,@second)
	# 	else values =="divide"
	# 		calculator.divide(@first,@second)
	# 	end 
	# @values=calculator.result

	#redirect to ("/")

end


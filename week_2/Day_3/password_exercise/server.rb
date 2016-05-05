require "sinatra"
require "sinatra/reloader" if development?

my_password_object= PasswordChecker.new
# created an object of the class after params

enable :sessions

get "/" do
	erb( :home)
end

post "/login" do
 	@email = params[:email]
 	# saving value in params in order to reuse it
 	@password = params[:password]
 	@result = my_password_object.check_password(@email,@password)
 	# two arguments email and password
	# erb( :password_result) another html page
end

# Make new page to re-route user
#add @ sign to my_password_object.check_password(@email,@password)
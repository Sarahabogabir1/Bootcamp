#server.rb

require "sinatra"
get "/"do #our server, our program, when you connect to it on 4567
			#get is a method for defining Sinatra
	"My first Sinatra app."
end 

get "/hi" do
	@greeting = "Hello, world!"
	erb(:welcome_page)
end

get "/about" do 
	"Hello my name is Sarah"
end 
#http://localhost:4567/about

get "/author" do
	erb :author
end

get "/time/" do 
	time = Time.now
	erb :time #nam of my variable
end 

get "pizza" do
	@ingredients = []
	erb :pizza
end 

get "/hours/ago/:num" do
	@num = params [:num]
	@time = DateTime.now
	@dynamic_page= @time - (60 * 60 * @num)
	erb:dynamic_page
end 

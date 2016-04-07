require "sinatra"
#require "sinatra/reloader" if development?

enable :sessions

 get "/" do
	erb :home
end

get "/login" do
	erb :login
end

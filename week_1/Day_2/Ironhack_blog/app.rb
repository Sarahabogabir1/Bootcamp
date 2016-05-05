#link files with require_relative
require_relative('lib/post.rb')
require_relative('lib/blog.rb')
# require_relative('lib/sponsored_post.rb')
require "sinatra"

time = Time.now 

post_1 = Post.new("Chile", time, "At the Atacama Dessert")
#post 1 text
#post description
#method that belongs to the post

post_2 = Post.new("Bangkok", time-10, "Eating Thai food by Wat Pho")
#post description

post_3 = Post.new("Siem Reap", time-20, "The city of the gods")
#post description

post_4 = Post.new("Miami", time-30, "In a programming bootcamp")
#post description

my_blog = Blog.new()
# blog.add_post(post_1)
# blog.add_post(post_2)
# blog.add_post(post_3)
# blog.add_post(post_4)

get "/home" do
	erb(:blog #?
end
#used when user will make a request to get page from server

post "/list_of_post" do
	erb(:post) #?
	redirect to("/")
end 




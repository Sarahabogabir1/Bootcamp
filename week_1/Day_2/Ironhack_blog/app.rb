#link files with require_relative
require_relative "lib/post.rb"
##--->require_relative('lib/sponsored_post.rb')
require_relative "lib/blog.rb"

#make a new post, here I am making an object with .new
#and using-------> title, date, text

time = Time.now #live method in ruby

post_1 = Post.new("Miami", time, "It is hot here and humid")
#post 1 text
#post description
#method that belongs to the post

post_2 = Post.new("Bangkok", time-10, "I ate Thai food today")
#post description

post_3 = Post.new("London", time-20, "I visited the queen today!")
#post description

post_4 = Post.new("Santiago", time-30, "I ate empanadas")
#post description
#need to have access to my class of Blog


my_blog = Blog.new([post_1, post_2, post_3, post_4])

my_blog.display_post

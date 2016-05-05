require_relative ("../lib/blog_class.rb") #lib folder contains all classes

RSpec.describe "My Blog" do 
	let (:my_blog){Blog.new}
	let (:post_1){Post.new("My first post",Time.new(2016, 4, 7),"First Post.")}
	let (:post_2){Post.new("My second post",Time.new(2016, 4, 8),"Second post.")}
	
	it "returns an empty string of posts" do 
		expect(my_blog.posts).to eq([])
	end

	it "returns an array of the posts in the correct chronological order" do
		my_blog.add_post(post_1)
		my_blog.add_post(post_2)
		expect(my_blog.latest_posts).to eq([post_2,post_1])
	end
end
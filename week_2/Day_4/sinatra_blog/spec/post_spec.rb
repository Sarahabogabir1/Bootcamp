require_relative ("../lib/post_class.rb")

RSpec.describe "My post" do 
	let (:my_post) {Post.new("Miami","Tuesday","Hello my name is Sarah")}

	it "returns true if post contains title" do 
		expect( my_post.title ).to eq("Miami")
	end
	
	it "returns true if post contains date" do 
		expect( my_post.date ).to eq("Tuesday")
	end
	
	it "returns true if post contains text" do 
		expect( my_post.text ).to eq("Hello my name is Sarah")
	end
end 
#TDD FILE
require_relative"../lib/task_class.rb"

RSpec.describe "Task" do 
	let (:task_1) {Task.new("Buy the milk")} #lazy way ppt1 
	let (:task_2) {Task.new("Wash the car")}
	#complete?
it "returns true if the task has been completed" do 
		expect(task_1.complete?).to eq(true)
		expect(task_2.complete?).to eq(true)
	end
	#complete!
it "returns true if the task has been completed" do 
		expect(task_1.complete!).to eq(true)
		expect(task_2.complete!).to eq(true)
	end
	#make_incomplete!
	it "returns true if the task has been completed" do 
		expect(task_1.make_incomplete!).to eq(false) #need to get false back
		expect(task_2.make_incomplete!).to eq(false)
	end
	#update_content
	it "returns a different content" do 
		expect(task_1.update_content!("Eat chocolate")).to eq("Eat chocolate")
		expect(task_2.update_content!("Watch Barca win")).to eq("Watch Barca win")
	end

end  




class Task
attr_reader :content, :id, :completed
@@current_id = 1 #will keep track of the total tasks we have

	def initialize(content)
		@content = content
		@id = @@current_id
		@completed = false
		@@current_id += 1
		@created_at=Time.new #shows current time 

	end 

	def complete?
		@completed = true
	end 

	def complete!
		@completed = true #! will reverse the status
	end 

	def make_incomplete!
		@completed = false 
	end

	def update_content!(new_content) #change the value of the actual variable content 
		@content = new_content #replacing old content with new content
	end 

end 
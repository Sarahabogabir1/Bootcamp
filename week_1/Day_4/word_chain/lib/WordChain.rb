class WordChain
	attr_accessor :dictionary
	
	def initialize (dictionary)
		@dictionary=dictionary
	end

	# def find_chain (word_1, word_2)
	# 	@word_1 = word_1
	# 	@word_2 = word_2
	# end

	# def string_to_array
	# 	# @word1 = @word_1.split("") 
	# 	# @word2 = @word_2.split("")
	# #("") turns it into an array
	# end 

	def looper(word1, word2)
		puts word1
		@word1 = word1.split("") 
		@word2 = word2.split("")

		until @word1 == @word2 do 

			@word1.each_with_index do |let, index|
				if let == @word2[index]
				else 
					temp = @word1.clone
					temp[index] = @word2[index]
					temp = temp.join("")
					if @dictionary.exists?(temp) 
						puts temp
						temp = temp.split("")
						@word1=temp
					end
				end                   
			end
		end
	end 
end 


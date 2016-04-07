class WordCounter
	attr_accessor :counter :string
	
	def initialize (text)
		@text=text
	end 

	def word_counter
		words = @text.split (" ")
		words.lenght
	end
end 


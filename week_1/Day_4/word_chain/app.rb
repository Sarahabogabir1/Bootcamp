require_relative "lib/WordChain.rb"
require 'ruby-dictionary'

dictionary = Dictionary.from_file('/usr/share/dict/words')
my_chain = WordChain.new(dictionary)


#puts dictionary.exists?("hello") #should come out true
#puts dictionary.exists?("flower") #should come out true

my_chain.looper("cat","dog")

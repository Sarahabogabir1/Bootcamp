require_relative "lib/authenticator.rb"
require_relative "lib/User.rb" #ruby you can access the class user
require_relative "lib/WordCounter.rb" #ruby you can access the class Countwords
#ask user for their usernmae and paswword

#auth = Authenticator.new("nizar", "swordfish")

puts "Give me your credentials to log in"

puts "Username"

username = gets.chomp

puts "Password: "

password = gets.chomp

sarah = User.new(username,password)



#------------------------------------------------------------------------
#assume they log in successfully
 puts "Success"
 puts "Now give me some text and I'll count the words!"

 puts"\n Your text has 50 words"
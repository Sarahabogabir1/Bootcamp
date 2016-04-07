class ProgrammingLanguage
    attr_accessor :name, :age, :type
    def initialize(name, age, type)
        @name = name
        @age = age
        @type = type
    end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
 array.each do | language |
   puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
 end
end

puts "First print"
array_printer(array_of_languages)
puts
#
aged_languages = array_of_languages.map do |lang| 
    lang.age += 1
    lang
end
puts "Map"
array_printer(aged_languages)
puts
#
puts "Sort"
sorted_languages = aged_languages.sort_by{|lang|lang.age}.reverse
array_printer(sorted_languages)
puts
#

no_java = array_of_languages.delete_if { |lang|lang.name == "Java"}
	puts "No Java"
array_printer(no_java)
#java should be gone in the last

puts #blank line to keep in clean
puts "shuffle"
array_printer(array_of_languages.shuffle)

#Bonus method! drop_while
#Drop the first one on the array, it will loop through the whole list of arrays
puts
statis_languages = array_of_languages.drop_while{ |lang| lang.type == "Dynamic"}
puts "Drop the while"

#Other Bonus method
#Pre Rotated
puts "Pre-rotaed by -2 spaces"
array_printer(array_of_languages)
puts
#Post Rotated
#! = bang
#Brings the strings from the back to the front 
puts "Post Rotate"
array_of_languages.rotate!(-2)
array_printer(array_of_languages)
puts 
#














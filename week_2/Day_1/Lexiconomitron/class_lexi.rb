#Lexi.rb

class Lexiconomitron

    def eat_t(string)
        var1 = string.delete "t"
        var1
    end

    def shazzam(string)
        string1 = string.split()
            string1.map do |rev|
                string2 = rev.reverse
            end
    end

end
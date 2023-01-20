require "base64"

class Problem_9

    def createFile(content)
        file = File.new("./text.txt", "w+")
        file.syswrite content
        file.close()
    end

    def encodeFile(str)
        content = File.read('./text.txt')
        if content
            content[str] = Base64.encode64(str).chomp()
            File.write("./Rohan.txt", content)
            return "data is encoded"
        else
            return "File cannot be opened"
        end
    end
end
content = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
    str = "the string that will be base encoded"

prob9 = Problem_9.new()

puts prob9.createFile(content)
puts prob9.encodeFile(str)
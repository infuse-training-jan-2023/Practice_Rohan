str = "002-10.00-20.00"
class Problem_4

    def serial_number(data)
        value1 = data[0..2]
        average = ((data[4..8].to_f+data[10..14].to_f)/2).round(2)
        return "#{value1}-%0.2f" % average
    end
end

prob = Problem_4.new()

puts prob.serial_number(str)

# puts serial_number(str)

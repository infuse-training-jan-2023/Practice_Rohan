require 'test/unit'
require_relative "Problem4"

class Testproblem1 < Test::Unit::TestCase
    def test_instance
        assert Problem_4.new().instance_of? Problem_4
    end

    def test_instance_of_String
        assert_instance_of(String,Problem_4.new().serial_number("002-10.00-20.00"))
    end
    
    def test_serial_number
        assert_equal("002-15.00",Problem_4.new().serial_number("002-10.00-20.00"))
    end

    def test_serial_number_1
        assert_empty("",Problem_4.new().serial_number(" "))
    end
end
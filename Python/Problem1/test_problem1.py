from problem1 import Problem1

class Test_SerialNumber:

    def test_no_input(self):
        prob = Problem1()
        assert "Invalid format",prob.serial_number("")

    def test_char_input(self):
        assert(Problem1().serial_number("002-10.90-f0.f0") == "Invalid format")

    def test_serial_number(self):
        assert(Problem1().serial_number("002-10.00-80.00") == "002-45.00")

    def test_navgative_number(self):
        assert(Problem1().serial_number("002--0.00-80.00") == "Invalid format")

    def test_special_character(self):
        assert(Problem1().serial_number("002-00.**-80.00") == "Invalid format")

    def test_invalid_length(self):
        assert(Problem1().serial_number("002-000.00-80.00") == "Invalid format")
    
    def test_instance(self):
        prob = Problem1()
        assert isinstance(prob, Problem1)
        
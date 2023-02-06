from problem1 import Problem1

class TestSerialNumber:
    def setup_method(self):
        self.prob = Problem1()

    def test_no_input(self):
        assert "Invalid format",self.prob.serial_number("")

    def test_char_input(self):
        assert(self.prob.serial_number("002-10.90-f0.f0") == "Invalid format")

    def test_serial_number(self):
        assert(self.prob.serial_number("002-10.00-80.00") == "002-45.00")

    def test_navgative_number(self):
        assert(self.prob.serial_number("002--0.00-80.00") == "Invalid format")

    def test_special_character(self):
        assert(self.prob.serial_number("002-00.**-80.00") == "Invalid format")

    def test_invalid_length(self):
        assert(self.prob.serial_number("002-000.00-80.00") == "Invalid format")
    
    def test_instance(self):
        assert isinstance(self.prob, Problem1)
        
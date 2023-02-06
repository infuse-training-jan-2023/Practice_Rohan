from problem4 import Problem4
from input import data

class TestSubArray:
    def setup_method(self):
        self.prob = Problem4()

    def test_subarray_no_input(self):
        assert self.prob.subarray(data,"") == "Error:unsupported operand type(s) for -: 'int' and 'str'"
    
    def test_subarray_char_input(self):
        assert self.prob.subarray(data,"pop") == "Error:unsupported operand type(s) for -: 'int' and 'str'"
    
    def test_subarray_valid_input(self):
        assert self.prob.subarray(data,-93) == 1023
    
    def test_subarray_instance(self):
        assert isinstance(self.prob,Problem4)
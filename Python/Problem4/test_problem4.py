from problem4 import Problem4
from input import data

class TestSubArray:
    def test_subarray_no_input(self):
        prob = Problem4()
        assert prob.subarray(data," ") == "Invalid Input"
    
    def test_subarray_char_input(self):
        prob = Problem4()
        assert prob.subarray(data,"pop") == "Invalid Input"
    
    def test_subarray_valid_input(self):
        prob = Problem4()
        assert prob.subarray(data,-93) == 1023
    
    def test_subarray_instance(self):
        prob = Problem4()
        assert isinstance(prob,Problem4)
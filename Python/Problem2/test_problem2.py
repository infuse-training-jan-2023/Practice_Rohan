from problem2 import Problem2

class TestArray:
    def setup_method(self):
        self.arr = [9, 5, 1, 2, 3, 4, 0, -1]
        self.prob = Problem2(self.arr)

    def test_element_at_negative_input(self):
        assert self.prob.element_at(-1) == "Error:Array index out of range"
    
    def test_element_at_out_of_range(self):
        assert self.prob.element_at(10) == "Error:Array index out of range"
    
    def test_element_at_char_input(self):
        assert self.prob.element_at("p") == "Error:'<' not supported between instances of 'str' and 'int'"

    def test_element_at_no_input(self):
        assert self.prob.element_at('') == "Error:'<' not supported between instances of 'str' and 'int'"
    
    def test_element_at_float_number(self):
        assert self.prob.element_at(1.8) == "Error:list indices must be integers or slices, not float"
    
    def test_element_at_valid_input(self):
        assert self.prob.element_at(4) == 3
    
    def test_inclusive_range_start_pos_negative_input(self):
        assert self.prob.inclusive_range(-5,1) == "Error:Array index out of range"

    def test_inclusive_range_start_pos_greater_then_end_pos(self):
        assert self.prob.inclusive_range(6,3) == "Error:Array index out of range"
    
    def test_inclusive_range_end_pos_negative_input(self):
        assert self.prob.inclusive_range(5,-1) == "Error:Array index out of range"
    
    def test_inclusive_range_start_pos_out_of_range(self):
        assert self.prob.inclusive_range(11,3) == "Error:Array index out of range"
    
    def test_inclusive_range_end_pos_out_of_range(self):
        assert self.prob.inclusive_range(1,10) == "Error:Array index out of range"
    
    def test_inclusive_range_char_input(self):
        assert self.prob.inclusive_range("p",2) == "Error:'<' not supported between instances of 'str' and 'int'"

    def test_inclusive_range_no_input(self):
        assert self.prob.inclusive_range('','') == 'Error:can only concatenate str (not "int") to str'
    
    def test_inclusive_range_start_pos_float_number(self):
        assert self.prob.inclusive_range(1.7,2) == "Error:slice indices must be integers or None or have an __index__ method"
    
    def test_inclusive_range_end_pos_float_number(self):
        assert self.prob.inclusive_range(2,4.8) == "Error:slice indices must be integers or None or have an __index__ method"
        
    def test_inclusive_range_valid_input(self):
        assert self.prob.inclusive_range(4,7) == [3, 4, 0, -1]

    def test_non_inclusive_range_start_pos_negative_input(self):
        assert self.prob.non_inclusive_range(-4,1) == "Error:Array index out of range"
    
    def test_non_inclusive_range_start_pos_greater_then_end_pos(self):
        assert self.prob.non_inclusive_range(8,3) == "Error:Array index out of range"
    
    def test_non_inclusive_range_end_pos_negative_input(self):
        assert self.prob.non_inclusive_range(4,-3) == "Error:Array index out of range"
    
    def test_non_inclusive_range_start_pos_out_of_range(self):
        assert self.prob.non_inclusive_range(10,3) == "Error:Array index out of range"
    
    def test_non_inclusive_range_end_pos_out_of_range(self):
        assert self.prob.non_inclusive_range(2,10) == "Error:Array index out of range"
    
    def test_non_inclusive_range_char_input(self):
        assert self.prob.non_inclusive_range(2,"pop") == "Error:'<' not supported between instances of 'str' and 'int'"
    
    def test_non_inclusive_range_no_input(self):
        assert self.prob.non_inclusive_range('','') == "Error:slice indices must be integers or None or have an __index__ method"
    
    def test_non_inclusive_range_start_pos_float_number(self):
        assert self.prob.non_inclusive_range(2.8,4) == "Error:slice indices must be integers or None or have an __index__ method"
    
    def test_non_inclusive_range_end_pos_float_number(self):
        assert self.prob.non_inclusive_range(2,4.5) == "Error:slice indices must be integers or None or have an __index__ method"
        
    def test_non_inclusive_range_valid_input(self):
        assert self.prob.non_inclusive_range(1,6) == [5, 1, 2, 3, 4]
    
    def test_start_and_length_start_pos_negative_input(self):
        assert self.prob.start_and_length(-1,2) == "Error:Array index out of range"
    
    def test_start_and_length_length_negative_input(self):
        assert self.prob.start_and_length(1,-9) == "Error:Array index out of range"
    
    def test_start_and_length_start_pos_plus_length_out_of_range(self):
        assert self.prob.start_and_length(10,1) == "Error:Array index out of range"

    def test_start_and_length_length_out_of_range(self):
        assert self.prob.start_and_length(2,11) == "Error:Array index out of range"
    
    def test_start_and_length_start_pos_out_of_range(self):
        assert self.prob.start_and_length(5,5) == "Error:Array index out of range"
    
    def test_start_and_length_char_input(self):
        assert self.prob.start_and_length("add",4) == "Error:'<' not supported between instances of 'str' and 'int'"
    
    def test_start_and_length_no_input(self):
        assert self.prob.start_and_length('','') == "Error:slice indices must be integers or None or have an __index__ method"
    
    def test_start_and_length_start_pos_float_number(self):
        assert self.prob.start_and_length(2.9,1) == "Error:slice indices must be integers or None or have an __index__ method"
    
    def test_start_and_length_float_number_length(self):
        assert self.prob.start_and_length(2,1.1) == "Error:slice indices must be integers or None or have an __index__ method"

    def test_start_and_length_valid_input(self):
        assert self.prob.start_and_length(5,3) == [4, 0, -1]
    
    def test_instance(self):
        assert isinstance(self.prob, Problem2)
    
    
from problem2 import Problem2

class Test_Array:

    def test_element_at_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.element_at(-1) == "Array index out of range"
    
    def test_element_at_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.element_at(10) == "Array index out of range"
    
    def test_element_at_char_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.element_at("p") == "Not a valid element. Add a new element"

    def test_element_at_no_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.element_at('') == "Not a valid element. Add a new element"
    
    def test_element_at_float_number(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.element_at(1.8) == "Not a valid element. Add a new element"
    
    def test_element_at_valid_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.element_at(4) == 3
    
    def test_inclusive_range_start_pos_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range(-5,1) == "Array index out of range"
    
    def test_inclusive_range_end_pos_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range(5,-1) == "Array index out of range"
    
    def test_inclusive_range_start_pos_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range(11,3) == "Array index out of range"
    
    def test_inclusive_range_end_pos_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range(1,10) == "Array index out of range"
    
    def test_inclusive_range_char_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range("p",2) == "Not a valid element. Add a new element"

    def test_inclusive_range_no_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range('','') == "Not a valid element. Add a new element"
    
    def test_inclusive_range_start_pos_float_number(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range(1.7,2) == "Not a valid element. Add a new element"
    
    def test_inclusive_range_end_pos_float_number(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range(2,4.8) == "Not a valid element. Add a new element"
        
    def test_inclusive_range_valid_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.inclusive_range(4,7) == [3, 4, 0, -1]

    def test_non_inclusive_range_start_pos_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(-4,1) == "Array index out of range"
    
    def test_non_inclusive_range_end_pos_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(4,-3) == "Array index out of range"
    
    def test_non_inclusive_range_start_pos_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(10,3) == "Array index out of range"
    
    def test_non_inclusive_range_end_pos_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(2,10) == "Array index out of range"
    
    def test_non_inclusive_range_char_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(2,"pop") == "Not a valid element. Add a new element"
    
    def test_non_inclusive_range_no_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range('','') == "Not a valid element. Add a new element"
    
    def test_non_inclusive_range_start_pos_float_number(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(2.8,4) == "Not a valid element. Add a new element"
    
    def test_non_inclusive_range_end_pos_float_number(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(2,4.5) == "Not a valid element. Add a new element"
        
    def test_non_inclusive_range_valid_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.non_inclusive_range(1,6) == [5, 1, 2, 3, 4]
    
    def test_start_and_length_start_pos_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(-1,2) == "Array index out of range"
    
    def test_start_and_length_length_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(1,-9) == "Array index out of range"
    
    def test_start_and_length_start_pos_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(10,1) == "Array index out of range"

    def test_start_and_length_length_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(2,11) == "Array index out of range"
    
    def test_start_and_length_start_pos_out_of_range(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(5,5) == "Array index out of range"
    
    def test_start_and_length_char_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length("add",4) == "Not a valid element. Add a new element"
    
    def test_start_and_length_no_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length('','') == "Not a valid element. Add a new element"
    
    def test_start_and_length_start_pos_float_number(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(2.9,1) == "Not a valid element. Add a new element"
    
    def test_start_and_length_float_number_length(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(2,1.1) == "Not a valid element. Add a new element"

    def test_start_and_length_valid_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert prob.start_and_length(5,3) == [4, 0, -1]
    
    def test_instance(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        prob = Problem2(arr)
        assert isinstance(prob, Problem2)
    
    
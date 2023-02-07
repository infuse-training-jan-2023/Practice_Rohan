from problem3 import Problem3

class TestSports:
    def setup_method(self):
        self.arr=["cricket", "TT", "Football", "Hockey"]
        self.prob = Problem3()

    def test_skip_sports_negative_input(self):
        assert self.prob.skip_sports(self.arr,-1) == "Error:Array Out of bound"
    
    def test_skip_sports_char_input(self):
        assert self.prob.skip_sports(self.arr,"p") == "Error:'<' not supported between instances of 'str' and 'int'"
    
    def test_skip_sports_no_input(self):
        assert self.prob.skip_sports(self.arr,"") == "Error:'<' not supported between instances of 'str' and 'int'"
    
    def test_skip_sports_out_of_range(self):
        assert self.prob.skip_sports(self.arr,10) == "Error:Array Out of bound"
    
    def test_skip_sports_valid_input(self):
        assert self.prob.skip_sports(self.arr,2) == ['2:Football', '3:Hockey']
    
    def test_instance(self):
        assert isinstance(self.prob, Problem3)
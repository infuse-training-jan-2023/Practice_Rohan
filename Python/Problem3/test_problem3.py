from problem3 import Problem3

class Test_Sports:

    def test_skip_sports_negative_input(self):
        prob = Problem3()
        assert prob.skip_sports(["cricket", "TT", "Football", "Hockey"],-1) == "Array Out of bound"
    
    def test_skip_sports_char_input(self):
        prob = Problem3()
        assert prob.skip_sports(["cricket", "TT", "Football", "Hockey"],"p") == "Invalid Input"
    
    def test_skip_sports_no_input(self):
        prob = Problem3()
        assert prob.skip_sports(["cricket", "TT", "Football", "Hockey"],"") == "Invalid Input"
    
    def test_skip_sports_out_of_range(self):
        prob = Problem3()
        assert prob.skip_sports(["cricket", "TT", "Football", "Hockey"],10) == "Array Out of bound"
    
    def test_skip_sports_valid_input(self):
        prob = Problem3()
        assert prob.skip_sports(["cricket", "TT", "Football", "Hockey"],2) == ['2:Football', '3:Hockey']
    
    def test_instance(self):
        prob = Problem3()
        assert isinstance(prob, Problem3)
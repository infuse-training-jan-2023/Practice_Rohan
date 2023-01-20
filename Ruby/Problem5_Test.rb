require 'test/unit'
require_relative "Problem5"

class Testproblem2 < Test::Unit::TestCase
    def test_instance
        assert Problem_5.new().instance_of? Problem_5
    end

    def test_element_at_euqal
        assert_equal(3,Problem_5.new().element_at([9, 5, 1, 2, 3, 4, 0, -1],4))
    end

    def test_element_at_Invalid_Index
        prob = Problem_5.new()
        assert_equal("invalid index",prob.element_at([9, 5, 1, 2, 3, 4, 0, -1],-1))
    end

    def test_element_at_Array_out_of_Bound
        prob = Problem_5.new()
        assert_equal("invalid index",prob.element_at([9, 5, 1, 2, 3, 4, 0, -1],10))
    end

    def test_inclusive_range_euqal
        assert_equal([1,2],Problem_5.new().inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],2,3))
    end

    def test_inclusive_range_Invalid_Index
        prob = Problem_5.new()
        assert_equal("invalid index",prob.inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],4,-1))
    end

    def test_inclusive_range_Array_out_of_Bound
        prob = Problem_5.new()
        assert_equal("invalid index",prob.inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],4,10))
    end


    def test_non_inclusive_range_euqal
        assert_equal([9,5,1],Problem_5.new().non_inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],0,3))
    end

    def test_non_inclusive_range_Invalid_Index
        prob = Problem_5.new()
        assert_equal("invalid index",prob.non_inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],4,-1))
    end

    def test_non_inclusive_range_1_Invalid_Index
        prob = Problem_5.new()
        assert_equal("invalid index",prob.non_inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],-1,5))
    end

    def test_non_inclusive_range_Array_out_of_Bound
        prob = Problem_5.new()
        assert_equal("invalid index",prob.non_inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],4,10))
    end


    def test_start_and_length_euqal
        assert_equal([5,1,2],Problem_5.new().start_and_length([9, 5, 1, 2, 3, 4, 0, -1],1,3))
    end

    def test_start_and_length_Invalid_Index
        prob = Problem_5.new()
        assert_equal("invalid input",prob.start_and_length([9, 5, 1, 2, 3, 4, 0, -1],4,-1))
    end

    def test_start_and_length_Array_out_of_Bound
        prob = Problem_5.new()
        assert_equal("array out of bound",prob.start_and_length([9, 5, 1, 2, 3, 4, 0, -1],9,1))
    end

    def test_start_and_length_1_Array_out_of_Bound
        prob = Problem_5.new()
        assert_equal("array out of bound",prob.start_and_length([9, 5, 1, 2, 3, 4, 0, -1],9,9))
    end
end
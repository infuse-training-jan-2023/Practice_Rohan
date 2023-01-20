require 'test/unit'
require_relative "Problem7"

class Testproblem3 < Test::Unit::TestCase
    def test_instance
        assert Problem_7.new().instance_of? Problem_7
    end

    def test_skip_sports
        assert_equal(["2:Football","3:Hockey"],Problem_7.new().skip_sports(["çricket","TT","Football","Hockey"],2))
    end

    def test_skip_sports_invalid_index
        assert_equal("invalid index",Problem_7.new().skip_sports(["çricket","TT","Football","Hockey"],-1))
    end

    def test_skip_sports_array_out_bound
        assert_equal("Array Out of bound",Problem_7.new().skip_sports(["çricket","TT","Football","Hockey"],10))
    end
end
require 'test/unit'
require_relative "hash"

class Testproblem2 < Test::Unit::TestCase
    def test_instance
        assert Problem_6.new().instance_of? Problem_6
    end

    def test_add_hash
        hash = {
            22 => 98,
            11 => 89,
            20.9 => 99
        }
        assert_equal({22=>98, 11=>89, 20.9=>99, 220=>972},Problem_6.new().add_hash(hash,220,972))
    end


    def test_add_hash_exits
        hash = {
            22 => 98,
            11 => 89,
            20.9 => 99
        }
        assert_equal("Key value already exist",Problem_6.new().add_hash(hash,22,98))
    end

    def test_retain_integer
        hash = {
            22 => 98,
            11 => 89,
            20.9 => 99
        }
        assert_equal({22=>98, 11=>89},Problem_6.new().retain_integer(hash))
    end

    def test_retain_integer_1
        hash = {
            22 => 98,
            11 => 89,
            209 => 99
        }
        assert_equal({22=>98, 11=>89, 209=>99},Problem_6.new().retain_integer(hash))
    end

end
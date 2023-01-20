require 'test/unit'
require_relative "Problem8"

class Testproblem3 < Test::Unit::TestCase
    def test_instance
        assert Problem_8.new().instance_of? Problem_8
    end

    def test_Json_data
        assert_equal("New Json File Created!",Problem_8.new().Json_data())
    end

    def test_Created_JSon_file
        assert_equal(true, File.file?('./profile.json'))
    end

    def test_read_JSon_data
        assert_equal('{"name"=>"Nicole Smith", "age"=>25, "salary"=>25552.67}', JSON.parse(File.read('./profile.json')).to_s)
    end
end
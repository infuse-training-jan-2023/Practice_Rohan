require 'test/unit'
require_relative "Problem9"

class Testproblem9 < Test::Unit::TestCase
    def test_instance
        assert Problem_9.new().instance_of? Problem_9
    end

    def test_encodeFile
        str = "the string that will be base encoded"
        assert_equal('data is encoded', Problem_9.new().encodeFile(str))
    end

    def test_Created_text_file
        assert_equal(true, File.file?('./text.txt'))
    end

    def test_Created_text_file_1
        assert_equal(true, File.file?('./Rohan.txt'))
    end

    def test_read_encoded_data
        assert_equal('Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ dGhlIHN0cmluZyB0aGF0IHdpbGwgYmUgYmFzZSBlbmNvZGVk ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852.', File.read('./Rohan.txt').force_encoding("utf-8"))
    end
end
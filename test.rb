require 'test/unit'

class TestExample < Test::Unit::TestCase

  def test_example
    assert_equal(2, 1 + 1)
  end
  
  def test_example 
     assert_equal(4, 3 + 1)
  end
end
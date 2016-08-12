require 'test_helper'

class TestDivideTest < Minitest::Test
  def setup
    @main = TestDivide::TestDivide.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::TestDivide::VERSION
  end

  def test_divide
    assert_equal 2, @main.divide(6,3), '6/3 is 2'
    assert_equal 5, @main.divide(10,2), '10/2 is 5'
    assert_equal 3, @main.divide(6,2), '6/2 is 3'
    assert_equal 1, @main.divide(11,10), '11/10 is 1'
    assert_equal 25, @main.divide(100,4), '100/4 is 25'
    assert_output(stdout=nil, '0 divided') {@main.divide(4,0)}
  end
end

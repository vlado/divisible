require "test/unit"
require "divisible"
require "divisible/core_ext"


class TestDivisible < Test::Unit::TestCase
  def test_if_loaded
    assert Fixnum.method_defined?(:divisible_by?)
  end

  def check_module_call
    assert Divisible.check(4,2)
  end
  
  def test_simple
    assert 2.divisible_by?(2)
  end

  def test_complex
    assert 100.divisible_by?(2,4,5,10,20,25,50)
  end

  def test_complex_with_zero
    assert_raise ZeroDivisionError do
      assert_equal false, 100.divisible_by?(2,4,5,10,20,25,50,0)
    end
  end

  def test_blank
    assert_raise ArgumentError do
      2.divisible_by?
    end
  end

  def test_division_by_zero
    assert_raise ZeroDivisionError do
      assert_equal false, 2.divisible_by?(0)
    end
  end

end

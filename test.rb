require './add_string'

require "minitest/autorun"

class TestAddNumberString < Minitest::Test

  def test_empty_string
    str = ""
    sum = add(str)
    assert_equal 0, sum
  end

  def test_single_number
    str = "1"
    sum = add(str)
    assert_equal 1, sum
  end

  def test_string_have_multiple_number
    str = "1,5"
    sum = add(str)
    assert_equal 6, sum
  end

  def test_string_have_new_line
    str = "1\n2,3"
    sum = add(str)
    assert_equal 6, sum
  end

  def test_string_with_delimiter
    str = "//;\n1;2"
    sum = add(str)
    assert_equal 3, sum
  end

  def test_string_with_negative_number
    str = "//;\n1;2,-3;-4"
    error = assert_raises(RuntimeError) do
      add(str)
    end
    assert_equal("negative numbers not allowed -3,-4", error.message)
  end
end

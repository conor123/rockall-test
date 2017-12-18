require "test/unit"
require_relative "../lib/validator"

class TestValidator < Test::Unit::TestCase
  def test_validate_excessive_params
    input_array = ["api.example.com/content.json", "api.example.com/content2.json"]
    result = Validator::validate_input(input_array )
    assert_false(result)
  end

  def test_validate_insufficient_params
    input_array = []
    result = Validator::validate_input(input_array )
    assert_false(result)
  end

   def test_validate_params
    # Check long array
    input_array = ["api.example.com/content.json"]
    result = Validator::validate_input(input_array )
    assert(result.is_a? String)
  end
end

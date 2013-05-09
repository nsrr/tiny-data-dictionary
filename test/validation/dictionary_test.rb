# This file will highlight json file formats that contain errors
require 'test_helper'

class DictionaryTest < Test::Unit::TestCase

  def test_valid_json
    assert_equal true, false # (JSON.parse("filename...") rescue false)
  end

  def test_check_for_invalid_variable_types
    assert_equal true, ['identifier', 'choices', 'integer', 'numeric'].include?("GET FROM JSON.")
  end

end

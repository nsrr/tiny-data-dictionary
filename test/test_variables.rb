# This file will highlight json file formats that contain errors

require 'test/unit'
require 'rubygems'
require 'json'

class TestVariables < Test::Unit::TestCase

  def test_valid_json
    assert_equal true, (JSON.parse("filename...") rescue false)
  end

  def test_check_for_invalid_variable_types
    assert_equal true, ['identifier', 'choices', 'integer', 'numeric'].include?("GET FROM JSON.")
  end

end

# This file will highlight json file formats that contain errors
require 'test_helper'

VALID_VARIABLE_TYPES = ['identifier', 'choices', 'integer', 'numeric']

class DictionaryTest < Test::Unit::TestCase

  Dir.glob("dictionary/**/*.json").each do |file|

    define_method("test_json: "+file) do
      assert_equal true, (!!JSON.parse(File.read(file)) rescue false)
    end

    define_method("test_variable_type: "+file) do
      assert_equal true, (VALID_VARIABLE_TYPES.include?(JSON.parse(File.read(file))["type"]) rescue false)
    end

  end

end

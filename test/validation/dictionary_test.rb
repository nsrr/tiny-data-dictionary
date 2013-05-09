# This file will highlight json file formats that contain errors
require 'test_helper'

class DictionaryTest < Test::Unit::TestCase

  def test_check_for_invalid_variable_types
    dictionary_files.each do |file|
      assert_equal "#{file} has valid variable type", file_valid_variable_type(file)
    end
  end

  def test_valid_json
    dictionary_files.each do |file|
      assert_equal "#{file} is valid JSON", file_valid_string(file)
    end
  end

  def dictionary_files
    Dir.glob("dictionary/**/*.json")
  end

  def file_valid_string(file)
    result = "#{file}"
    if (!!JSON.parse(File.read(file)) rescue false)
      result += " is valid JSON"
    else
      result += " is not valid JSON"
    end
    result
  end

  def file_valid_variable_type(file)
    valid_variable_types = ['identifier', 'choices', 'integer', 'numeric']
    result = "#{file}"
    if (json = JSON.parse(File.read(file)) rescue false)
      if valid_variable_types.include?(json["type"])
        result += " has valid variable type"
      else
        result += " variable type #{json["type"]} is not a valid variable type: [#{valid_variable_types.join(", ")}]"
      end
    else
      result += " is not valid JSON"
    end
    result
  end

end

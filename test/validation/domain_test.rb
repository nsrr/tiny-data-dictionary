# This file will highlight json file formats that contain errors
require 'test_helper'

class DomainTest < Test::Unit::TestCase

  def test_valid_json
    domain_files.each do |file|
      assert_equal "#{file} is valid JSON", file_valid_string(file)
    end
  end

  def domain_files
    Dir.glob("domains/**/*.json")
  end

end

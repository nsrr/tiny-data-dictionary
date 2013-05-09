# This file will highlight json file formats that contain errors
require 'test_helper'

class DomainTest < Test::Unit::TestCase

  Dir.glob("domains/**/*.json").each do |file|

    define_method("test_json: "+file) do
      assert_equal true, (!!JSON.parse(File.read(file)) rescue false)
    end

  end

end

require 'turn/autorun'
require 'test/unit'
require 'rubygems'
require 'json'


class Test::Unit::TestCase

  def file_valid_string(file)
    result = "#{file}"
    if (!!JSON.parse(File.read(file)) rescue false)
      result += " is valid JSON"
    else
      result += " is not valid JSON"
    end
    result
  end

end

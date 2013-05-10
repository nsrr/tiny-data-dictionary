# Added to allow tests to be run using `rake`

require 'rake/testtask'
require File.expand_path('../version', __FILE__)

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/validation/*_test.rb']
  t.warning = true
  t.verbose = true
end

task :default => :test

namespace :dd do

  task :create do
    require 'csv'
    require 'fileutils'
    require 'rubygems'
    require 'json'

    folder = "dd/#{TinyDataDictionary::VERSION::STRING}"
    FileUtils.mkpath folder

    CSV.open("#{folder}/variables.csv", "wb") do |csv|
      keys = %w(id display_name description type domain)
      csv << ['folder'] + keys
      Dir.glob("variables/**/*.json").each do |file|
        if json = JSON.parse(File.read(file)) rescue false
          variable_folder = file.gsub(/variables\//, '').split('/')[0..-2].join('/')
          csv << [variable_folder] + keys.collect{|key| json[key]}
        end
      end
    end
    CSV.open("#{folder}/domains.csv", "wb") do |csv|
      keys = %w(value display_name description)
      csv << ['id'] + keys
      Dir.glob("domains/**/*.json").each do |file|
        if json = JSON.parse(File.read(file)) rescue false
          domain_name = file.gsub(/domains\//, '')
          json.each do |hash|
            csv << [domain_name] + keys.collect{|key| hash[key]}
          end
        end
      end
    end

    puts "Data Dictionary Created in #{folder}"
  end

end

# Added to allow tests to be run using `rake`

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/validation/*_test.rb']
  t.warning = true
  t.verbose = true
end

task :default => :test

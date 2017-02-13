require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["lib"]
  t.warning = true
  t.test_files = FileList['specs/*_spec.rb']
end

task :assert_test do |t2|
  ruby 'tests/die_test.rb'
end


task default: :test

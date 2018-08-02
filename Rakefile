require "bundler/gem_tasks"
require "rake/testtask"
require 'ci/reporter/rake/minitest'
ENV['CI_REPORTS'] = 'testReports/report'

Rake::TestTask.new do |t|
  t.libs << "tests"
  t.test_files = FileList['tests/**/*_tests.rb']
end
desc "Run tests"
task :test => 'ci:setup:minitest'
task default: :test
require 'ci/reporter/rake/minitest'

task :default => :test
task :test do
  Dir.glob('./test/*_test.rb').each { |file| require file}
end

task :test => 'ci:setup:minitest'
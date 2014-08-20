require 'bundler/gem_tasks'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
  #empty
end

require 'rspec'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
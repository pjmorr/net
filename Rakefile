# encoding: utf-8
# frozen_string_literal: true
require 'colorize'

begin
  require 'rspec/core/rake_task'
  require 'bundler/audit/task'
  require 'rubocop/rake_task'
  require 'yaml'

# Make sure we're running from the directory the Rakefile lives in since
# many things (ie: docker build, config reading) use relative paths.
Dir.chdir(File.dirname(__FILE__))

BUNDLE_CONFIG = YAML.load(File.read('config.yaml'))
BUNDLE_IMAGE = "#{BUNDLE_CONFIG['docker']['image']}:#{BUNDLE_CONFIG['docker']['tag']}".freeze

desc 'Captures BUNDLE_CONFIG and BUNDLE_IMAGE to create Docker Image'
task :image do |_t|
  args = ['build', '-t', BUNDLE_IMAGE, '.']
  sh 'docker', *args
end

desc 'Pushes Docker image to container repository'
task push: [:image] do |_t|
  args = ['push', BUNDLE_IMAGE]
  sh 'docker', *args
end

Bundler::Audit::Task.new

task default: 'bundle:audit'

desc 'Runs RuboCop'
task :rubocop do
  RuboCop::RakeTask.new
end

  RSpec::Core::RakeTask.new(:spec)

  task default: :spec
  # rescue LoadError
  # no rspec available
end

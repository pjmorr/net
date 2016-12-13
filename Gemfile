#This file is generated by ModuleSync, do not edit.

source ENV['GEM_SOURCE'] || "https://rubygems.org"

# Determines what type of gem is requested based on place_or_version.
def gem_type(place_or_version)
  if place_or_version =~ /^git:/
    :git
  elsif place_or_version =~ /^file:/
    :file
  else
    :gem
  end
end

# Find a location or specific version for a gem. place_or_version can be a
# version, which is most often used. It can also be git, which is specified as
# `git://somewhere.git#branch`. You can also use a file source location, which
# is specified as `file://some/location/on/disk`.
def location_for(place_or_version, fake_version = nil)
  if place_or_version =~ /^(git[:@][^#]*)#(.*)/
    [fake_version, { :git => $1, :branch => $2, :require => false }].compact
  elsif place_or_version =~ /^file:\/\/(.*)/
    ['>= 0', { :path => File.expand_path($1), :require => false }]
  else
    [place_or_version, { :require => false }]
  end
end

group :development do
  gem 'activesupport',              :require => false
  gem 'colorize',                   :require => false
  gem 'dotenv',                     :require => false
  gem 'gitlab',                     :require => false
  gem 'text-table',                 :require => false
  gem 'jsonpath',                   :require => false
  gem 'httparty',                   :require => false
  gem 'rb-readline',                :require => false
  gem 'terminal-table',             :require => false
  gem 'rake',                       :require => false
  gem 'weekdays',                   :require => false
  gem 'rspec',                      :require => false
  gem 'cog-rb',                     :require => false, :git => 'https://github.com/cog-bundles/cog-rb'
  gem 'bundler-audit',              :require => false
  gem 'parallel_tests', '< 2.10.0', :require => false if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.0.0')
  gem 'parallel_tests',             :require => false if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new('2.0.0')
  gem 'rubocop', '0.41.2',          :require => false if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.0.0')
  gem 'rubocop',                    :require => false if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new('2.0.0')
end


# Evaluate Gemfile.local if it exists
if File.exists? "#{__FILE__}.local"
  eval(File.read("#{__FILE__}.local"), binding)
end

# Evaluate ~/.gemfile if it exists
if File.exists?(File.join(Dir.home, '.gemfile'))
  eval(File.read(File.join(Dir.home, '.gemfile')), binding)
end

# vim:ft=ruby

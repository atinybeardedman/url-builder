# frozen_string_literal: true

require "bundler/gem_tasks"


begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue => LoadError
end

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

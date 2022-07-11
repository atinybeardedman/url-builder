# frozen_string_literal: true

require_relative "lib/url_builder/version"

Gem::Specification.new do |spec|
  spec.name = "url_builder"
  spec.version = UrlBuilder::VERSION
  spec.authors = ["Sean Dickinson"]
  spec.email = ["contact@seandickinson.dev"]

  spec.summary = "A Ruby class to create URLs using the builder pattern"
  spec.description = "An implementation of the builder design pattern in Ruby to create URLs"
  spec.homepage = "https://github.com/atinybeardedman/url-builder"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/atinybeardedman/url-builder"
  spec.metadata["changelog_uri"] = "https://github.com/atinybeardedman/url-builder/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.11"
  spec.add_dependency "activesupport", "~> 7.0"
end

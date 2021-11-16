# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-hash/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-hash"
  spec.version       = Jekyll::HashFilter::VERSION
  spec.authors       = ["Harrison McCarty"]
  spec.email         = ["mccarth@purdue.edu"]
  spec.description   = %q{Message digest filter for Jekyll}
  spec.summary       = %q{This plugin provides a simple liquid filter which converts strings to crptographically secure hashes.}
  spec.homepage      = "https://github.com/hmccarty/jekyll-hash"
  spec.license       = "MIT"

  spec.files         = [*Dir["lib/**/*.rb"], "README.md"]
  spec.test_files    = [*Dir["spec/*.rb"]]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'
  spec.add_development_dependency 'liquid'
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 2.2.26"
end
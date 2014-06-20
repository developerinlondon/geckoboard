# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geckoboard/version'

Gem::Specification.new do |spec|
  spec.name          = "geckoboard"
  spec.version       = Geckoboard::VERSION
  spec.authors       = ["Nayeem Syed"]
  spec.email         = ["developerinlondon@gmail.com"]
  spec.summary       = %q{Add update_or_create and delete_then_create to ActiveRecord models}
  spec.homepage      = "https://github.com/developerinlondon/geckoboard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

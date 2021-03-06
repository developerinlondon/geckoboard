# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geckoboard/version'

Gem::Specification.new do |spec|
  spec.name          = "geckoboard"
  spec.version       = Geckoboard::VERSION
  spec.authors       = ["Nayeem Syed"]
  spec.email         = ["developerinlondon@gmail.com"]
  spec.summary       = %q{A little gem to expose data nicely to Geckoboard}
  spec.homepage      = "https://github.com/developerinlondon/geckoboard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3", ">= 10.3.2"
  spec.add_development_dependency "rspec", "~> 3.0", ">= 3.0.0"
  spec.add_development_dependency "pry", "~> 0.9", ">= 0.9.12.6"
end

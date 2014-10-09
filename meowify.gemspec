# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meowify/version'

Gem::Specification.new do |spec|
  spec.name          = "meowify"
  spec.version       = Meowify::VERSION
  spec.authors       = ["Kyle Maune"]
  spec.email         = ["kmaune71@gmail.com"]
  spec.summary       = %q{English to cat translations.}
  spec.description   = %q{Converts everyday English to cat talk.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'engtagger'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-autometatags/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-autometatags"
  spec.version       = Middleman::Autometatags::VERSION
  spec.authors       = ["Will Schenk"]
  spec.email         = ["wschenk@gmail.com"]
  spec.summary       = %q{A middleman extension inspired by the metatag gem that helps manage metatags.}
  spec.description   = %q{A middleman extension inspired by the metatag gem that helps manage metatags.}
  spec.homepage      = "https://github.com/HappyFunCorp/middleman-autometatags"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     'middleman-core', ['>= 3.0.0']

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

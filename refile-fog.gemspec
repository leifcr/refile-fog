# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'refile/fog/version'

Gem::Specification.new do |spec|
  spec.name          = "leifcr-refile-fog"
  spec.version       = Refile::Fog::VERSION
  spec.authors       = ["Jonas Nicklas"]
  spec.email         = ["jonas.nicklas@gmail.com"]
  spec.summary       = %q{Fog backend for Refile}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "leifcr-refile"
  spec.add_dependency("fog-core", "~> 1.42")
  spec.add_dependency("fog-json")
  spec.add_dependency("fog-xml", "~> 0.1.1")
  spec.add_development_dependency("fog-aws")
end

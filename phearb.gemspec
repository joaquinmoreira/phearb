# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phearb/version'

Gem::Specification.new do |spec|
  spec.name          = "phearb"
  spec.version       = Phearb::VERSION
  spec.authors       = ["Joaquín Moreira"]
  spec.email         = ["jmoreiras@gmail.com"]

  spec.summary       = %q{Simplified connection to phear servers}
  spec.homepage      = "https://github.com/joaquinrulin/phearb"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.0"
  spec.add_development_dependency "byebug", "~> 9.0"

  spec.add_runtime_dependency "activesupport", "~> 4.2"
  spec.add_runtime_dependency "rest-client", "~> 1.8"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amazon_echo/version'

Gem::Specification.new do |spec|
  spec.name          = "amazon_echo"
  spec.version       = AmazonEcho::VERSION
  spec.authors       = ["gomayonqui"]
  spec.email         = ["escribimepues@gmail.com"]

  spec.summary       = %q{Simple client for amazon echo interface}
  spec.description   = %q{Simple client that supports requests and responses for amazon echo }
  spec.homepage      = "https://github.com/gomayonqui/amazon_echo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "byebug", "~> 6.0.0"
end

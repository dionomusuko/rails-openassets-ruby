Gem::Specification.new do |spec|
  spec.name          = "leb128"
  spec.version       = "1.0.0"
  spec.authors       = ["Clayton Bonigut"]

  spec.summary       = %q{A set of utility functions for encoding and decoding LEB128-compressed integers.}
  spec.homepage      = "https://github.com/cl8n/leb128"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0")

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "yard"
end

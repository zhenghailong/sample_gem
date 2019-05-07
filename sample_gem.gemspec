
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sample_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "sample_gem"
  spec.version       = SampleGem::VERSION
  spec.authors       = ["hailong"]
  spec.email         = ["hailong.zheng@classi.jp"]

  spec.summary       = %q{ a short summary, because RubyGems requires one.}
  spec.description   = %q{ a longer description or delete this line.}
  spec.homepage      = "https://github.com/hailong"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "generate_dump_file/version"

Gem::Specification.new do |spec|
  spec.name          = "generate_dump_file"
  spec.version       = GenerateDumpFile::VERSION
  spec.authors       = ["Nimish Jain"]
  spec.email         = ["jainnimish7@gmail.com"]

  spec.summary       = %q{Create dump file in temporary directoy }
  spec.description   = %q{Create dump file in temporary folder of root directory, if folder not present in dir then it will create one. 
                          Usage: open interactive prompt by typing 'irb' and require 'generate_dump_file'.
                          again, require File.expand_path('../config/environment', __FILE__) and then run GenerateDumpFile.create }
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "techracers"

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

Gem::Specification.new do |spec|
  spec.name          = "advent_of_code_2017"
  spec.version       = "2017"
  spec.authors       = ["Andrew Whitaker"]
  spec.email         = [""]

  spec.summary       = "2017 advent of code"
  spec.description   = "2017 advent of code"
  spec.homepage      = ""

  spec.files         = Dir.glob("lib/**/*.rb")
  spec.executables   << "advent_of_code"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

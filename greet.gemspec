# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "greet/version"

Gem::Specification.new do |spec|
  spec.name          = "greet"
  spec.version       = Greet::VERSION
  spec.authors       = ["Dominick Del Bosque"]
  spec.email         = ["dominick@theosfp.com"]

  spec.summary       = %q{gRPC test gem}
  spec.description   = %q{gRPC test gem}
  spec.homepage      = "https://github.com/nikomc0/greet_gem"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/nikomc0/greet_gem"
    spec.metadata["changelog_uri"] = "https://github.com/nikomc0/greet_gem"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/proto", "lib/greet"]

  spec.add_dependency "grpc", github: 'grpc/grpc', submodules: true
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end

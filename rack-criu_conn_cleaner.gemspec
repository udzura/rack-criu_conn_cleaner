lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rack/criu_conn_cleaner/version"

Gem::Specification.new do |spec|
  spec.name          = "rack-criu_conn_cleaner"
  spec.version       = Rack::CriuConnCleaner::VERSION
  spec.authors       = ["Uchio Kondo"]
  spec.email         = ["udzura@udzura.jp"]

  spec.summary       = %q{Rack::CriuConnCleaner.}
  spec.description   = %q{Rack::CriuConnCleaner.}
  spec.homepage      = "https://mc.lolipop.jp"

  spec.metadata["allowed_push_host"] = "https://mc.lolipop.jp" # do not push it
  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end

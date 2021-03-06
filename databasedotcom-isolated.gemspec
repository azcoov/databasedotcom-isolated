# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'databasedotcom/isolated/version'

Gem::Specification.new do |gem|
  gem.name          = "databasedotcom-isolated"
  gem.version       = Databasedotcom::Isolated::VERSION
  gem.authors       = ["Seba Gamboa"]
  gem.email         = ["me@sagmor.com"]
  gem.description   = %q{Isolate databasedotcom materialized clases to work with multiple orgs safely}
  gem.summary       = %q{Isolate databasedotcom materialized clases to work with multiple orgs safely}
  gem.homepage      = "https://github.com/sagmor/databasedotcom-isolated"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "databasedotcom"
  gem.add_dependency "sourcify"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end

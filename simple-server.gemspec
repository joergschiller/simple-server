# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple/server_version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jörg Schiller"]
  gem.email         = ["joergschiller@googlemail.com"]
  gem.summary       = "Simple static web server for local development using rack and thin."

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple-server"
  gem.require_paths = ["lib"]
  gem.version       = Simple::ServerVersion::VERSION

  gem.add_dependency "rack"
  gem.add_dependency "thin"
end

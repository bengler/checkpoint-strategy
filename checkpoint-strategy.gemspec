# -*- encoding: utf-8 -*-
require File.expand_path('../lib/checkpoint-strategy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bjørge Næss", "Thomas Drevon"]
  gem.email         = ["bjoerge@bengler.no", "thomas@bengler.no"]
  gem.description   = %q{Shared classes for implementing custom checkpoint auth strategies}
  gem.summary       = %q{Shared classes for implementing custom checkpoint auth strategies}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "checkpoint-strategy"
  gem.require_paths = ["lib"]
  gem.version       = Checkpoint::Strategy::VERSION

  gem.add_development_dependency "rspec"
end

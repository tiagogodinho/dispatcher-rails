# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dispatcher-rails/version'

Gem::Specification.new do |gem|
  gem.name          = 'dispatcher-rails'
  gem.version       = Dispatcher::Rails::VERSION
  gem.authors       = ['Tiago Rafael Godinho']
  gem.email         = ['tiagogodinho3@gmail.com']
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ''

  gem.add_dependency 'rails', '~> 3.2.0'

  gem.add_development_dependency 'rspec-rails', '~> 2.11.0'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end

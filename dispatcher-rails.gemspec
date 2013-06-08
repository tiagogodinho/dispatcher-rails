# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dispatcher-rails/version'

Gem::Specification.new do |gem|
  gem.name          = 'dispatcher-rails'
  gem.version       = Dispatcher::Rails::VERSION
  gem.authors       = ['Tiago Rafael Godinho']
  gem.email         = ['tiagogodinho3@gmail.com']
  gem.description   = %q{Use fnando/dispatcher-js with assets-pipeline}
  gem.summary       = %q{An easy way to use fnando/dispatcher-js with assets-pipeline}
  gem.homepage      = ''

  gem.add_dependency 'rails', '~> 3.2.0'

  gem.add_development_dependency 'rspec-rails', '~> 2.13.2'
  gem.add_development_dependency 'simplecov',   '~> 0.7.1'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end

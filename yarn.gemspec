# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yarn/version"

Gem::Specification.new do |s|
  s.name        = "yarn"
  s.version     = Yarn::VERSION
  s.date        = Time.now.strftime('%Y-%m-%d')

  s.summary     = %q{Multi-process webserver for static, dynamic (*.rb) files and Rack applications.}
  s.description = %q{A multi-process web-server written in Ruby 1.9.}

  s.authors     = ["Jesper Kjeldgaard"]
  s.email       = ["thejspr@gmail.com"]
  s.homepage    = "https://github.com/thejspr/yarn"

  s.has_rdoc      = 'yard'

  s.files         = Dir['{bin,lib}/**/*', 'README.md', 'LICENSE'] & `git ls-files -z`.split("\0")
  s.test_files    = `git ls-files -- {test,spec,features,test_objects}/*`.split("\n")
  s.executables   = ["yarn"]
  s.require_path  = "lib"
  
  s.rubyforge_project = s.name

  s.add_dependency('parslet', '>= 1.2')
  s.add_dependency('trollop', '>= 1.16')
  s.add_dependency('rack', '>= 1.3')

  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'faraday'
  s.add_development_dependency 'nokogiri'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
end

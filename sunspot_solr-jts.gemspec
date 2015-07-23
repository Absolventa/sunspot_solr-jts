# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)

$:.unshift(lib) unless $:.include?(lib)

require 'sunspot/solr/version'

Gem::Specification.new do |s|
  s.name        = "sunspot_solr-jts"
  s.version     = Sunspot::Solr::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Mat Brown', 'Peer Allan', 'Dmitriy Dzema', 'Benjamin Krause', 'Marcel de Graaf', 'Brandon Keepers', 'Peter Berkenbosch',
                  'Brian Atkinson', 'Tom Coleman', 'Matt Mitchell', 'Nathan Beyer', 'Kieran Topping', 'Nicolas Braem', 'Jeremy Ashkenas',
                  'Dylan Vaughn', 'Brian Durand', 'Sam Granieri', 'Nick Zadrozny', 'Jason Ronallo']
  s.email       = ["cz@aegisnet.de"]
  s.homepage    = 'https://github.com/absolventa/sunspot_solr-jts'
  s.summary     = 'Bundled Solr distribution with JTS for Sunspot'
  s.license     = 'MIT'
  s.description = <<-TEXT
    Sunspot::Solr provides a bundled Solr distribution for use with Sunspot.
    Typical deployment environments will require more configuration, but this
    distribution is well suited to development and testing.
  TEXT

  s.rubyforge_project = "sunspot_solr-jts"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec', '~> 1.1'
  s.add_development_dependency "rake", '>= 10'

  s.rdoc_options << '--webcvs=http://github.com/outoftime/sunspot/tree/master/%s' <<
                  '--title' << 'Sunspot-Solr - Bundled Solr distribution for Sunspot - API Documentation' <<
                  '--main' << 'README.rdoc'
end

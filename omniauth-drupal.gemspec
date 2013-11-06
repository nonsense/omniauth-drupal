# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth/drupal/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-drupal"
  s.version     = Omniauth::Drupal::VERSION
  s.authors     = ["Anton Evangelatov"]
  s.email       = ["anton.evangelatov@gmail.com"]
  s.homepage    = "https://github.com/nonsense/omniauth-drupal"
  s.summary     = 'Drupal strategy for OmniAuth.'
  s.description = 'Drupal strategy for OmniAuth.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth'

  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rack-test'
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'divisible/version'

Gem::Specification.new do |s|
  s.name        = "divisible"
  s.version     = Divisible::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Vlado Cingel"]
  s.email       = ["vlado@cingel.hr"]
  s.homepage    = "https://github.com/vlado/divisible"
  s.summary     = "Useful to find out if one number is divisible by another"
  s.description = "Useful to find out if one number is divisible by another. For example 9.divisible_by(3) will return true, and 10.divisible_by(3) will return false"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "divisible"
  
  s.add_development_dependency "rake"

  s.files        = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end
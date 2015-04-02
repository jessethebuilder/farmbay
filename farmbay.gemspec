$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "farmbay/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "farmbay"
  s.version     = Farmbay::VERSION
  s.authors     = ["Jesse Farmer"]
  s.email       = ["jessethebuilder@yahoo.com"]
  s.homepage    = "http://anysoft.us"
  s.summary     = "A Rails plugin for interacting with the Ebay API."
  s.description = "Good stuff"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"

  s.add_dependency 'savon', '~> 2.10.0'
  s.add_dependency 'httpclient', '~> 2.6.0.1'
end
  
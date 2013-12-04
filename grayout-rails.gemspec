$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "grayout-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "grayout-rails"
  s.version     = GrayoutRails::VERSION
  s.authors     = ["Dylan Cashman"]
  s.email       = ["dylan.cashman@annkissam.com"]
  s.homepage    = "http://www.annkissam.com"
  s.summary     = "Provides a view helper to gray out parts of the view conditionally, with feedback."
  s.description = "Provides a view helper to gray out parts of the view conditionally, with feedback."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec'
end

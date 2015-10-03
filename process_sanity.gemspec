$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "process_sanity/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "process_sanity"
  s.version     = ProcessSanity::VERSION
  s.authors     = ["sxjoel"]
  s.email       = ["joel@senexx.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ProcessSanity."
  s.description = "TODO: Description of ProcessSanity."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "process_sanity/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "process-sanity"
  s.version     = ProcessSanity::VERSION
  s.authors     = ["sxjoel"]
  s.email       = ["joel@senexx.com"]
  s.homepage    = ""
  s.summary     = "Sanity Check For Environment's processes"
  s.description = "Sanity Check For Environment's processes"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
end

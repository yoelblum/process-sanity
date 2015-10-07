$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "process_sanity/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "process-sanity"
  s.version     = ProcessSanity::VERSION
  s.authors     = ["yoelblum"]
  s.email       = ["yoelblumenator@gmail.com"]
  s.homepage    = "https://github.com/yoelblum/process-sanity"
  s.summary     = "Make sure all your processes(resque, redis etc) are running when your start Rails server"
  s.description = "Process Sanity lets you list all the processes your app depends on and makes sure they are running when you start your Rails server."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "event/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "event"
  s.version     = Event::VERSION
  s.authors     = ["VPoint"]
  s.email       = ["estar.raji@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of Event."
  s.description = ": Description of Event."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "camaleon_cms", "~> 2.0"

  s.add_development_dependency "sqlite3"
end

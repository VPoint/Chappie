$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lesson/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lesson"
  s.version     = Lesson::VERSION
  s.authors     = ["VPoint"]
  s.email       = ["estar.raji@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of Lesson."
  s.description = ": Description of Lesson."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "camaleon_cms", "~> 2.0"

  s.add_development_dependency "sqlite3"
end

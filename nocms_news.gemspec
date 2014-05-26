$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "no_cms/news/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-news"
  s.version     = NoCms::News::VERSION
  s.email       = ["gems@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-news"
  s.summary     = "Gem with news functionality independent from any CMS and embeddable in any Rails 4 app"
  s.description = "Gem with news functionality independent from any CMS and embeddable in any Rails 4 app"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", '~> 4.0', '>= 4.0.3'

  s.add_development_dependency "sqlite3"
end

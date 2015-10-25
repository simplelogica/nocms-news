$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "no_cms/news/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-news"
  s.version     = NoCms::News::VERSION
  s.authors     = ["Simplelogica"]
  s.email       = ["gems@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-news"
  s.summary     = "Gem with news functionality independent from any CMS and embeddable in any Rails 4 app"
  s.description = "Gem with news functionality independent from any CMS and embeddable in any Rails 4 app"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", '~> 4.0', '>= 4.0.0'
  s.add_dependency "globalize", '~> 4.0', '>= 4.0.0'
  s.add_dependency "friendly_id", '~> 5.0', '>= 5.0.0'
  s.add_dependency "friendly_id-globalize", '~> 1.0.0.alpha', '>= 1.0.0.alpha.1'
  s.add_dependency "kaminari", '~> 0.15', '>= 0.15.1'

  s.add_development_dependency "sqlite3"
end

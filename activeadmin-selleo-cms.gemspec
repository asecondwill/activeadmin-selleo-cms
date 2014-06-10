$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activeadmin-selleo-cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin-selleo-cms"
  s.version     = ActiveadminSelleoCms::VERSION
  s.authors     = ["Adrian Ossowski"]
  s.email       = ["aossowski@gmail.com"]
  s.homepage    = "https://github.com/aossowski/activeadmin-selleo-cms"
  s.summary     = "ActiveAdmin CMS extension"
  s.description = "ActiveAdmin CMS extension"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "jquery-rails", "~> 3.1.0"
  s.add_dependency "jquery-ui-rails", "~> 4.0.1"
  s.add_dependency "activeadmin", "~> 0.6.0"
  s.add_dependency "globalize3", "~> 0.3.0"
  s.add_dependency "ckeditor", "4.0.4"
  s.add_dependency "paperclip"
  s.add_dependency "language_list"
  s.add_dependency "haml", "3.1.8"
  s.add_dependency "awesome_nested_set"
  s.add_dependency "liquid"
  s.add_dependency "texticle", "~> 2.0"
  s.add_dependency "i18n-active_record"
  s.add_dependency "nokogiri"
  s.add_dependency "remotipart", "~> 1.0"
  s.add_dependency "acts_as_list"
  s.add_dependency "wicked_pdf"

  s.add_development_dependency "pg"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara", "1.1.4"
  s.add_development_dependency "capybara-webkit"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "headless"
end

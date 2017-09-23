$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'slack/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'slack'
  s.version     = Slack::VERSION
  s.authors     = ['Jimmy Pocock']
  s.email       = ['jimmypocock@yahoo.com']
  s.homepage    = 'https://crank.today'
  s.summary     = 'API for Slack'
  s.description = 'Contains all Slack functionality.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.4'

  s.add_development_dependency 'versionist'
end

require_relative "lib/static/version"

Gem::Specification.new do |spec|
  spec.name        = "static"
  spec.version     = Static::VERSION
  spec.authors     = ["shivraj"]
  spec.email       = ["shivaraj.sayagaon@weboniselab.com"]
  spec.homepage    = ""
  spec.summary     = "Summary of Static."
  spec.description = "Description of Static."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4"
  spec.add_development_dependency "rspec-rails"

end

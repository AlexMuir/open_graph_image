$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "open_graph_image/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "open_graph_image"
  spec.version     = OpenGraphImage::VERSION
  spec.authors     = ["Alex Muir"]
  spec.email       = ["me@alexmuir.com"]
  spec.license     = "MIT"

  spec.summary       = "Generates preview images for inclusion in OpenGraph tags"
  spec.description   = "When a link is shared on social media, an image is generally shown as a preview.  This library creates those images."
  spec.homepage      = "https://github.com/AlexMuir/open_graph_images"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3" 
  spec.add_dependency 'imgkit', '~> 1.6.2'
  spec.add_dependency 'wkhtmltoimage-binary'

  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "sqlite3"
end



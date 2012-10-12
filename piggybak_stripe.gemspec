$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "piggybak_stripe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "piggybak_stripe"
  s.version     = PiggybakStripe::VERSION
  s.authors     = ["Steph Skardal", "Tim Case"]
  s.email       = ["steph@endpoint.com", 'tim@endpoint.com']
  s.homepage    = "https://github.com/piggybak/piggybak_stripe"
  s.summary     = "Piggybak Stripe"
  s.description = "Integration of Stripe payment gateway for use with Piggybak"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  
  s.add_dependency 'stripe', '1.7.4'
end

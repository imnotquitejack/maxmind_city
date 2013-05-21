# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maxmind_city/version'

Gem::Specification.new do |spec|
  spec.name          = "maxmind_city"
  spec.version       = MaxmindCity::VERSION
  spec.authors       = ["Jon Collier"]
  spec.email         = ["jcollier@atlantistech.com"]
  spec.description   = %q{Use MaxMind service to lookup IP of city}
  spec.summary       = %q{This gem is a simple wrapper for MaxMind's GeoIP City, ISP, and Organization lookup. See https://www.maxmind.com/en/city_demo for details.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.11.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

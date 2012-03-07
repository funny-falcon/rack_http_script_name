# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack_http_script_name/version"

Gem::Specification.new do |s|
  s.name        = "rack_http_script_name"
  s.version     = RackHttpScriptName::VERSION
  s.authors     = ["Sokolov Yura 'funny-falcon'"]
  s.email       = ["funny.falcon@gmail.com"]
  s.homepage    = "https://github.com/funny-falcon/rack_http_script_name"
  s.summary     = %q{Rack middleware to automatically strip HTTP_SCRIPT_NAME}
  s.description = %q{In case of nginx proxy, I wish to set SCRIPT_NAME to some value, but it sets HTTP_SCRIPT_NAME. So that, I'd like to adjust SCRIPT_NAME and PATH_INFO accordantly}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rack"
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

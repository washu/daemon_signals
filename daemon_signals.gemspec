# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daemon_signals/version'

Gem::Specification.new do |spec|
  spec.name          = "daemon_signals"
  spec.version       = DaemonSignals::VERSION
  spec.authors       = ["Sal Scotto"]
  spec.email         = ["sal.scotto@gmail.com"]
  spec.summary       = %q{Extends Process.daemon to raise a Signal when executed}
  spec.description   = %q{There are times when you need to restart threads and jobs if your process is daemonized. This gem provides it.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubysl-test-unit"
end

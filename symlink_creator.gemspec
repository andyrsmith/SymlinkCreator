lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "#{lib}/version.rb"

Gem::Specification.new do |s|
  s.name          = %q{Symlink_Creator}
  s.version       = SymlinkCreator::VERSION
  s.author        = "Andy Smith"
  s.date          = %q{2014-07-29}
  s.summary       = %q{Creates symlink for you from a specified folder}
  s.files         = `git ls-files`.split("\n")-%w(spec/Untitled.rft)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n") -%w(spec/Untitled.rft)
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.license       = "MIT"

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"
end

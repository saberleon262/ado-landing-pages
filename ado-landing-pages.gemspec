
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ado/landing/pages/version"

Gem::Specification.new do |spec|
  spec.name          = "ado-landing-pages"
  spec.version       = Ado::Landing::Pages::VERSION
  spec.authors       = ["Adones Pitogo"]
  spec.email         = ["pitogo.adones@gmail.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "http://adopisoft.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "http://github.com"
    spec.metadata["changelog_uri"] = "http://google.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'coffee-rails', '~> 4.2'
  spec.add_dependency 'sass-rails', '~> 5.0'
  spec.add_dependency 'turbolinks', '~> 5'
  spec.add_dependency "angularjs-rails"
  spec.add_dependency "toastr-rails"
  spec.add_dependency "jquery-rails"
  spec.add_dependency "font-awesome-rails"
  spec.add_dependency 'bootstrap', '~> 4.1.3'
  spec.add_dependency 'thredded', '~> 0.16.1'

end


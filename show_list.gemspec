require_relative 'lib/show_list/version'

Gem::Specification.new do |spec|
  spec.name          = "show_list"
  spec.version       = ShowList::VERSION
  spec.authors       = ["Mitzi17"]
  spec.email         = ["m_estrada17@live.com"]

  spec.summary       = %q{Tvmaze data of movies}
  spec.description   = %q{gives info about movies database}
  spec.homepage      = "https://github.com/mitzi17/show_list"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mitzi17/show_list"
  spec.metadata["changelog_uri"] = "https://github.com/mitzi17/show_list"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  #spec.bindir        = "exe"
  spec.executables   = ["show_list"]
  spec.require_paths = ["lib"]
end

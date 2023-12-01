# frozen_string_literal: true

require_relative "lib/AdventOfCode2023/version"

Gem::Specification.new do |spec|
  spec.name          = "AdventOfCode2023"
  spec.version       = AdventOfCode2023::VERSION
  spec.authors       = ["Andre LaFleur"]
  spec.email         = ["cincospenguinos@gmail.com"]

  spec.summary       = "My solutions for AdventOfCode2023"
  spec.description   = ""
  spec.homepage      = "https://www.github.com/cincospenguinos/AdventOfCode2023"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

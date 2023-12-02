# frozen_string_literal: true

require_relative "lib/lbhrr/version"

Gem::Specification.new do |spec|
  spec.name = "lbhrr"
  spec.version = Lbhrr::VERSION
  spec.authors = ["Delaney Kuldvee Burke"]
  spec.email = ["delaney@zero2one.ee"]

  spec.summary = "A CLI tool for deploying and managing Rack applications."
  spec.description = "Lbhrr is a command-line tool designed for seamless deployment, management, and versioning of Rack applications, integrating with systems like Harbr, Traefik, and runit."
  spec.homepage = "https://github.com/dekubu/lbhrr"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dekubu/lbhrr"
  spec.metadata["changelog_uri"] = "https://github.com/dekubu/lbhrr/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.start_with?("test/", "spec/", "features/")
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add runtime dependencies here. For example:
  spec.add_dependency "net-ssh", "~> 6.1"
  # spec.add_dependency "example-gem", "~> 1.0"

  # Development dependencies (if any) can be added here. For example:
  # spec.add_development_dependency "rspec", "~> 3.0"
end

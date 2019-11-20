# -*- encoding: utf-8 -*-
# stub: bitcoin-ruby 0.0.19 ruby lib

Gem::Specification.new do |s|
  s.name = "bitcoin-ruby".freeze
  s.version = "0.0.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 2.6.13".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["lian".freeze]
  s.date = "2019-03-12"
  s.description = "This is a ruby library for interacting with the bitcoin protocol/network".freeze
  s.email = ["meta.rb@gmail.com".freeze]
  s.executables = ["bitcoin_shell".freeze]
  s.files = ["bin/bitcoin_shell".freeze]
  s.homepage = "https://github.com/lian/bitcoin-ruby".freeze
  s.rubygems_version = "3.0.4".freeze
  s.summary = "bitcoin utils and protocol in ruby".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<scrypt>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<eventmachine>.freeze, [">= 0"])
    else
      s.add_dependency(%q<ffi>.freeze, [">= 0"])
      s.add_dependency(%q<scrypt>.freeze, [">= 0"])
      s.add_dependency(%q<eventmachine>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<ffi>.freeze, [">= 0"])
    s.add_dependency(%q<scrypt>.freeze, [">= 0"])
    s.add_dependency(%q<eventmachine>.freeze, [">= 0"])
  end
end

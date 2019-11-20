# -*- encoding: utf-8 -*-
# stub: openassets-ruby 0.6.7 ruby lib

Gem::Specification.new do |s|
  s.name = "openassets-ruby".freeze
  s.version = "0.6.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["azuchi".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-06-02"
  s.description = "The implementation of the Open Assets Protocol for Ruby.".freeze
  s.email = ["azuchi@haw.co.jp".freeze]
  s.executables = ["openassets".freeze]
  s.files = ["exe/openassets".freeze]
  s.homepage = "https://github.com/haw-itn/openassets-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "The implementation of the Open Assets Protocol for Ruby.".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bitcoin-ruby>.freeze, ["~> 0.0.18"])
      s.add_runtime_dependency(%q<ffi>.freeze, ["~> 1.9.8"])
      s.add_runtime_dependency(%q<rest-client>.freeze, ["= 2.0"])
      s.add_runtime_dependency(%q<httpclient>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<leb128>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.9"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
      s.add_development_dependency(%q<travis>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bitcoin-ruby>.freeze, ["~> 0.0.18"])
      s.add_dependency(%q<ffi>.freeze, ["~> 1.9.8"])
      s.add_dependency(%q<rest-client>.freeze, ["= 2.0"])
      s.add_dependency(%q<httpclient>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<leb128>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.9"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<timecop>.freeze, [">= 0"])
      s.add_dependency(%q<travis>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bitcoin-ruby>.freeze, ["~> 0.0.18"])
    s.add_dependency(%q<ffi>.freeze, ["~> 1.9.8"])
    s.add_dependency(%q<rest-client>.freeze, ["= 2.0"])
    s.add_dependency(%q<httpclient>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<leb128>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.9"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_dependency(%q<travis>.freeze, [">= 0"])
  end
end

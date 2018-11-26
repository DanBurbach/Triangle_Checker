# -*- encoding: utf-8 -*-
# stub: loc 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "loc".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Cyrille Courti\u00E8re".freeze]
  s.date = "2017-07-07"
  s.email = ["cyrille@wayzup.com".freeze]
  s.homepage = "http://github.com/wayzup/loc".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Location handling & geographical computations".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_development_dependency(%q<byebug>.freeze, ["~> 9.0"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_dependency(%q<byebug>.freeze, ["~> 9.0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<byebug>.freeze, ["~> 9.0"])
  end
end

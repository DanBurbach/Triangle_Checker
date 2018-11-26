# -*- encoding: utf-8 -*-
# stub: geo_location 0.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "geo_location".freeze
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Your".freeze]
  s.date = "2011-01-23"
  s.description = "Geo Location allows you to geo-locate your users using their IP address via hostip.info or maxmind.com. This Ruby gem is dead simple to use and configure. Checkout the README and post any issue (or pull requests) to us on GitHub.".freeze
  s.email = ["chris@ignitionindustries.com".freeze]
  s.homepage = "http://github.com/chrisyour/geo_location".freeze
  s.rubyforge_project = "geo_location".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Geo Location allows you to geo-locate your users using their IP address via hostip.info or maxmind.com.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>.freeze, [">= 0"])
      s.add_development_dependency(%q<nokogiri>.freeze, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>.freeze, [">= 0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
  end
end

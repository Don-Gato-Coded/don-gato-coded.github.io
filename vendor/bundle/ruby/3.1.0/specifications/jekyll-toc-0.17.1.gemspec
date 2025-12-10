# -*- encoding: utf-8 -*-
# stub: jekyll-toc 0.17.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-toc".freeze
  s.version = "0.17.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["toshimaru".freeze, "torbjoernk".freeze]
  s.date = "2021-05-16"
  s.description = "Jekyll (Ruby static website generator) plugin which generates a Table of Contents for the page.".freeze
  s.email = "me@toshimaru.net".freeze
  s.homepage = "https://github.com/toshimaru/jekyll-toc".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.2.15".freeze
  s.summary = "Jekyll Table of Contents plugin".freeze

  s.installed_by_version = "3.6.7".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.9".freeze])
  s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.11".freeze])
end

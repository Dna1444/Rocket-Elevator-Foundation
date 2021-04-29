# -*- encoding: utf-8 -*-
# stub: ibm_watson 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ibm_watson".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org", "documentation_uri" => "https://cloud.ibm.com/developer/watson/documentation", "source_code_uri" => "https://github.com/watson-developer-cloud/ruby-sdk" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Max Nussbaum".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-02-02"
  s.homepage = "https://www.github.com/watson-developer-cloud".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Official client library to use the IBM Watson Services".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<eventmachine>.freeze, ["~> 1.2"])
      s.add_runtime_dependency(%q<faye-websocket>.freeze, ["~> 0.11"])
      s.add_runtime_dependency(%q<http>.freeze, ["~> 4.1.0"])
      s.add_runtime_dependency(%q<ibm_cloud_sdk_core>.freeze, ["~> 1.1.1"])
      s.add_runtime_dependency(%q<jwt>.freeze, ["~> 2.2.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 2.2"])
      s.add_development_dependency(%q<codecov>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<dotenv>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<httplog>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.11"])
      s.add_development_dependency(%q<minitest-hooks>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<minitest-retry>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.62"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.4"])
    else
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_dependency(%q<eventmachine>.freeze, ["~> 1.2"])
      s.add_dependency(%q<faye-websocket>.freeze, ["~> 0.11"])
      s.add_dependency(%q<http>.freeze, ["~> 4.1.0"])
      s.add_dependency(%q<ibm_cloud_sdk_core>.freeze, ["~> 1.1.1"])
      s.add_dependency(%q<jwt>.freeze, ["~> 2.2.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 2.2"])
      s.add_dependency(%q<codecov>.freeze, ["~> 0.1"])
      s.add_dependency(%q<dotenv>.freeze, ["~> 2.4"])
      s.add_dependency(%q<httplog>.freeze, ["~> 1.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.11"])
      s.add_dependency(%q<minitest-hooks>.freeze, ["~> 1.5"])
      s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
      s.add_dependency(%q<minitest-retry>.freeze, ["~> 0.1"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.62"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.16"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.4"])
    end
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    s.add_dependency(%q<eventmachine>.freeze, ["~> 1.2"])
    s.add_dependency(%q<faye-websocket>.freeze, ["~> 0.11"])
    s.add_dependency(%q<http>.freeze, ["~> 4.1.0"])
    s.add_dependency(%q<ibm_cloud_sdk_core>.freeze, ["~> 1.1.1"])
    s.add_dependency(%q<jwt>.freeze, ["~> 2.2.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.2"])
    s.add_dependency(%q<codecov>.freeze, ["~> 0.1"])
    s.add_dependency(%q<dotenv>.freeze, ["~> 2.4"])
    s.add_dependency(%q<httplog>.freeze, ["~> 1.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.11"])
    s.add_dependency(%q<minitest-hooks>.freeze, ["~> 1.5"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
    s.add_dependency(%q<minitest-retry>.freeze, ["~> 0.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.62"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.16"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.4"])
  end
end

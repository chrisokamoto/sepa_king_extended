# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sepa_king/version'

Gem::Specification.new do |s|
  s.name          = 'sepa_king_extended'
  s.version       = SEPA::VERSION
  s.authors       = ['Georg Leciejewski', 'Georg Ledermann', 'Chris Okamoto']
  s.email         = ['gl@salesking.eu', 'mail@georg-ledermann.de', 'christiane.okamoto@gmail.com']
  s.description   = 'Accepts payment type 3 - for payments in CHF and not SEPA in pain.0001.0001.03 (ISO 20022)'
  s.summary       = 'Ruby gem for creating SEPA XML files'
  s.homepage      = 'https://github.com/chrisokamoto/sepa_king_extended'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.0.0'

  s.add_runtime_dependency 'activemodel', '>= 3.0.0'
  s.add_runtime_dependency 'builder'
  s.add_runtime_dependency 'iban-tools'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'nokogiri', RUBY_VERSION < '2.1.0' ? '~> 1.6.0' : '~> 1'
end

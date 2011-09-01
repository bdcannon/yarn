$LOAD_PATH << File.expand_path('../../../lib', __FILE__)

require 'rubygems'
require 'simplecov'

SimpleCov.start do
  add_filter "/spec/"
end

require 'bundler/setup'
require 'capybara/rspec'
require 'fakefs'
# require 'fakefs/spec_helpers'

require 'yarn'
require 'yarn/parslet_parser'
require 'yarn/treetop_parser'
require 'yarn/version'
require 'yarn/request_handler'
require 'yarn/static_handler'
require 'yarn/directory_lister'
require 'helpers'

RSpec.configure do |config|
  config.include Helpers
  # config.include FakeFS::SpecHelpers
end

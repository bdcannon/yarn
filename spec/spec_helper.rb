$LOAD_PATH << File.expand_path('../../../lib', __FILE__)

require 'rubygems'
require 'bundler/setup'
require 'fakefs'

# unless /jruby/ =~ `ruby -v`
  require 'simplecov'
  SimpleCov.start do
    FakeFS.deactivate!
    add_filter "/spec/"
    add_filter "lib/yarn/http*"
  end
# end

require 'yarn'
require 'helpers'
require 'pry'

RSpec.configure do |config|
  config.include Helpers
end

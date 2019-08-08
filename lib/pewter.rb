require "httparty"
require "pry"

require "pewter/configuration"
require "pewter/client"

module Pewter
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

require 'phearb/version'
require 'phearb/configuration'
require 'phearb/agent'

module Phearb
  class << self
    attr_accessor :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end

    def fetch(url, options = {})
      Agent.new(url).fetch(options)
    end
  end
end

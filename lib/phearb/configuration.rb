module Phearb
  class Configuration
    attr_accessor :host
    attr_accessor :port

    DEFAULT_HOST = 'localhost'
    DEFAULT_PORT = 8100

    def initialize
      @host = DEFAULT_HOST
      @port = DEFAULT_PORT
    end
  end
end

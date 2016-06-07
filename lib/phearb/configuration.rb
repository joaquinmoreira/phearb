module Phearb
  class Configuration
    attr_accessor :host
    attr_accessor :port
    attr_accessor :timeout

    DEFAULT_HOST = 'localhost'
    DEFAULT_PORT = 8100
    DEFAULT_TIMEOUT = 5

    def initialize
      @host = DEFAULT_HOST
      @port = DEFAULT_PORT
      @timeout = DEFAULT_TIMEOUT
    end
  end
end

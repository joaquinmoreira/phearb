require 'rest_client'
require 'phearb/response'

module Phearb
  class Agent

    def initialize(url)
      @url = url
    end

    def fetch
      http_response = RestClient.get(server_url, params: { fetch_url: @url })
      Response.from_json(http_response)
    end

    private

    def server_url
      "#{Phearb.configuration.host}:#{Phearb.configuration.port}"
    end
  end
end

require 'rest_client'
require 'phearb/response'
require 'phearb/error'

module Phearb
  class Agent

    def initialize(url)
      @url = url
    end

    def fetch(options = {})
      params = options.merge(fetch_url: @url)

      Timeout::timeout(Phearb.configuration.timeout.to_f) do
        http_response = RestClient.get(server_url, params: params)        
        Response.from_json(http_response)
      end
    rescue Timeout::Error => exception
      raise Error::Timeout
    end

    private

    def server_url
      "#{Phearb.configuration.host}:#{Phearb.configuration.port}"
    end
  end
end

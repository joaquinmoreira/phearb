require 'active_support/core_ext/object/blank'

module Phearb
  class Response < OpenStruct

    def self.from_json(json)
      return nil if json.blank?
      new(JSON.parse(json))
    end
  end
end

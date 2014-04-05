module Darkroom
  class Root
    
    @format = 'json'
    @url = 'https://api.imgur.com/3'

    class << self
      attr_accessor :resource, :url, :format
    end

    def self.get (path, params={})
      parse raw_response(path, params)
    end

    def self.raw_response(path, params={})
      @resource["#{path}.json"].get params
    end

    def self.parse(response)
      JSON.parse(response)
    end

  end
end
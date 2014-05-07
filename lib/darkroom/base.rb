module Darkroom
  
  module Root
    class << self
      attr_accessor :resource, :extension
    end
  end

  def self.setup(opts)
    Darkroom::Root.resource = RestClient::Resource.new( opts[:root_url], :headers => opts[:headers] )
    Darkroom::Root.extension = opts[:extension]
  end

end
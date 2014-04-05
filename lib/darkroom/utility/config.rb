module Darkroom
  
  def self.authorize(client_id)
    Root.resource = RestClient::Resource.new Root.url, :headers => { :authorization => "Client-ID #{client_id}" }
  end

  private

  def self.build
    [Image, Album, Comment].each do |klass|
      klass.instance_eval do
        @resources.keys.each do |name|
          define_singleton_method(name) do |*args|
            path = @resources[name].call(args).join('/')
            Root.get(path)
          end
        end
      end
    end
  end

end
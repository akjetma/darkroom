module Darkroom
  
  def self.authorize(client_id)
    Root.resource = RestClient::Resource.new Root.url, :headers => { :authorization => "Client-ID #{client_id}" }
  end

  def self.configure
    authorize(ENV['IMGUR_CLIENT_ID']) if ENV['IMGUR_CLIENT_ID']
  end

end


module Darkroom
  module Album
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |args| "album/#{args[0]}" },
        :create  => lambda { |data| Darkroom::Model::Album.new(data) }
      },

      :image => {
        :pattern => lambda { |args| "album/#{args[0]}/image/#{args[1]}" },
        :create  => lambda { |data| Darkroom::Model::Image.new(data) }
      },

      :images => {
        :pattern => lambda { |args| "album/#{args[0]}/images" },
        :create  => lambda { |data| data.collect {|image| Darkroom::Model::Image.new(image)} }
      }

    }
    
    build_endpoints
  end
end
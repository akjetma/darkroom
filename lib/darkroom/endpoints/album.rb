module Darkroom
  class Album < Darkroom::Endpoint
    @resources = {

      :info => {
        :pattern => lambda { |args| "album/#{args[0]}" },
        :create  => lambda { |data| Album.new(data) }
      },

      :image => {
        :pattern => lambda { |args| "album/#{args[0]}/image/#{args[1]}" },
        :create  => lambda { |data| Image.new(data) }
      },

      :images => {
        :pattern => lambda { |args| "album/#{args[0]}/images" },
        :create  => lambda { |data| data.collect {|image| Image.new(image)} }
      }

    }
    
    def_endpoints
  end
end
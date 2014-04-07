module Darkroom
  module Gallery
    extend Darkroom::Endpoint

    @resources = {

      :album => {
        :pattern => lambda { |args| "gallery/album/#{args[0]}" },
        :create  => lambda { |data| 
          data['images'] = data['images'].collect {|image| Darkroom::Model::Image.new(data)}
          Darkroom::Model::GalleryAlbum.new(data)
        }
      }

    }

    build_endpoints
  end
end
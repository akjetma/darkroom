module Darkroom
  class Model
    class GalleryAlbum < Darkroom::Model
      @schema = {

        'images' => Darkroom::Model::Image

      }
    end
  end
end
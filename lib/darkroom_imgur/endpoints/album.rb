module Imgur
  module Endpoint
    class Album
      extend Darkroom::Endpoint
      
      resource :info,   'album/:album_id',                 Darkroom::Model::Album
      resource :image,  'album/:album_id/image/:image_id', Darkroom::Model::Image
      resource :images, 'album/:album_id/images',          Darkroom::Model::Image, :many => true
    end
  end
end
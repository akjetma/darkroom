module Imgur
  module Endpoint
    class Image
      include Darkroom::Endpoint
      
      resource :info, 'image/:image_id', Darkroom::Model::Image
    end
  end
end
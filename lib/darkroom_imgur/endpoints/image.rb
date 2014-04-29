module Imgur
  module Endpoint
    class Image
      extend Darkroom::Endpoint
      
      resource :info, 'image/:image_id', Darkroom::Model::Image
    end
  end
end
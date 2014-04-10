module Darkroom
  module Album
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |album_id| "album/#{id}" },
        :response_model => Darkroom::Model::Album
      },

      :image => {
        :pattern => lambda { |album_id, image_id| "album/#{album_id}/image/#{image_id}" },
        :response_model => Darkroom::Model::Image
      },

      :images => {
        :pattern => lambda { |album_id| "album/#{album_id}/images" },
        :response_model => Darkroom::Model::Image
      }

    }
    
    build_endpoints
  end
end
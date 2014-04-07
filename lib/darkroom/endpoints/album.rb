module Darkroom
  module Album
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |args| "album/#{args[0]}" },
        :response_model => Darkroom::Model::Album
      },

      :image => {
        :pattern => lambda { |args| "album/#{args[0]}/image/#{args[1]}" },
        :response_model => Darkroom::Model::Image
      },

      :images => {
        :pattern => lambda { |args| "album/#{args[0]}/images" },
        :response_model => Darkroom::Model::Image
      }

    }
    
    build_endpoints
  end
end
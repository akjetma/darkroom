module Darkroom
  module Gallery
    extend Darkroom::Endpoint

    @resources = {

      :album => {
        :pattern => lambda { |args| "gallery/album/#{args[0]}" },
        :response_model => Darkroom::Model::Image
      }

    }

    build_endpoints
  end
end
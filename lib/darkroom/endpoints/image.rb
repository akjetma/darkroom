module Darkroom
  module Image
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |image_id| "image/#{image_id}" },
        :response_model => Darkroom::Model::Image
      },

    }

    build_endpoints
  end
end
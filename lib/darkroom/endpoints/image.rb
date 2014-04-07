module Darkroom
  module Image
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |args| "image/#{args[0]}" },
        :response_model => Darkroom::Model::Image
      },

    }

    build_endpoints
  end
end
module Darkroom
  module Image
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |args| "image/#{args[0]}" },
        :create  => lambda { |data| Darkroom::Model::Image.new(data) }
      },

    }

    build_endpoints
  end
end
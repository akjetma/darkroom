module Darkroom
  module Comment
    extend Darkroom::Endpoint
    
    @resources = {

      :info => {
        :pattern => lambda { |args| "comment/#{args[0]}" },
        :response_model => Darkroom::Model::Comment
      },

      :replies => {
        :pattern => lambda { |args| "comment/#{args[0]}/replies" },
        :response_model => Darkroom::Model::Comment
      }

    }

    build_endpoints
  end
end
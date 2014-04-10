module Darkroom
  module Comment
    extend Darkroom::Endpoint
    
    @resources = {

      :info => {
        :pattern => lambda { |comment_id| "comment/#{comment_id}" },
        :response_model => Darkroom::Model::Comment
      },

      :replies => {
        :pattern => lambda { |comment_id| "comment/#{comment_id}/replies" },
        :response_model => Darkroom::Model::Comment
      }

    }

    build_endpoints
  end
end
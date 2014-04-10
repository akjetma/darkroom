module Darkroom
  module Gallery
    module Image
      extend Darkroom::Endpoint

      @resources = {

        :info => {
          :pattern => lambda { |image_id| "gallery/image/#{image_id}" },
          :response_model => Darkroom::Model::Gallery::Image
        },

        :votes => {
          :pattern => lambda { |image_id| "gallery/image/#{image_id}/votes" },
          :response_model => Darkroom::Model::Vote
        },

        :comments => {
          :pattern => lambda { |image_id| "gallery/image/#{image_id}/comments" },
          :response_model => Darkroom::Model::Comment
        },

        :comment_ids => {
          :pattern => lambda { |image_id| "gallery/image/#{image_id}/comments/ids" },
          :response_model => Darkroom::Model::Basic
        },

        :comment_count => {
          :pattern => lambda { |image_id| "gallery/image/#{image_id}/comments/count" },
          :response_model => Darkroom::Model::Basic
        },

        :comment => {
          :pattern => lambda { |image_id, comment_id| "gallery/image/#{image_id}/comment/#{comment_id}" },
          :response_model => Darkroom::Model::Comment
        }

      }

      build_endpoints
    end
  end
end
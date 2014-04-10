module Darkroom
  module Gallery
    module Album
      extend Darkroom::Endpoint

      @resources = {

        :info => {
          :pattern => lambda { |album_id| "gallery/album/#{album_id}" },
          :response_model => Darkroom::Model::Gallery::Album
        },

        :votes => {
          :pattern => lambda { |album_id| "gallery/album/#{album_id}/votes" },
          :response_model => Darkroom::Model::Vote
        },

        :comments => {
          :pattern => lambda { |album_id| "gallery/album/#{album_id}/comments" },
          :response_model => Darkroom::Model::Comment
        },

        :comment_ids => {
          :pattern => lambda { |album_id| "gallery/album/#{album_id}/comments/ids" },
          :response_model => Darkroom::Model::Basic 
        },

        :comment_count => {
          :pattern => lambda { |album_id| "gallery/album/#{album_id}/comments/count" },
          :response_model => Darkroom::Model::Basic 
        },

        :comment => {
          :pattern => lambda { |album_id, comment_id| "gallery/album/#{album_id}/comment/#{comment_id}" },
          :response_model => Darkroom::Model::Comment
        }

      }

      build_endpoints
    end
  end
end
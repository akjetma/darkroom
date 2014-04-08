module Darkroom
  module Gallery
    module Album
      extend Darkroom::Endpoint

      @resources = {

        :info => {
          :pattern => lambda { |args| "gallery/album/#{args[0]}" },
          :response_model => Darkroom::Model::Gallery::Album
        },

        :votes => {
          :pattern => lambda { |args| "gallery/album/#{args[0]}/votes" },
          :response_model => Darkroom::Model::Vote
        }

        :comments => {
          :pattern => lambda { |args| "gallery/album/#{args[0]}/comments" },
          :response_model => Darkroom::Model::Comment
        }

        :comment_ids => {
          :pattern => lambda { |args| "gallery/album/#{args[0]}/comments/ids" },
          :response_model => Darkroom::Model::Basic 
        }

        :comment_count => {
          :pattern => lambda { |args| "gallery/album/#{args[0]}/comments/count" },
          :response_model => Darkroom::Model::Basic 
        }

        :comment => {
          :pattern => lambda { |args| "gallery/album/#{args[0]}/comment/#{args[1]}" },
          :response_model => Darkroom::Model::Comment
        }

      }

      build_endpoints
    end
  end
end
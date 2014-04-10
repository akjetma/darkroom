module Darkroom
  module Gallery
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |*args| ["gallery", args].flatten.join('/') },
        :response_model => Darkroom::Model::Gallery
      },

      :memes => {
        :pattern => lambda { |*args| ["gallery/g/memes", args].flatten.join('/') },
        :response_model => Darkroom::Model::Gallery
      },

      :subreddit => {
        :pattern => lambda { |*args| ["gallery/r/subreddit", args].flatten.join('/') },
        :response_model => Darkroom::Model::Gallery
      },

      :search => {
        :pattern => lambda { |query, *args| ["gallery/search", args].flatten.join('/') + "?q=#{query}" },
        :response_model => Darkroom::Model::Gallery
      },

      :random => {
        :pattern => lambda { |page| "gallery/random/random/#{page}" },
        :response_model => Darkroom::Model::Gallery
      },

      :votes => {
        :pattern => lambda { |gallery_id| "gallery/#{gallery_id}/votes" },
        :response_model => Darkroom::Model::Vote
      },

      :comments => {
        :pattern => lambda { |gallery_id| "gallery/#{gallery_id}/comments" },
        :response_model => Darkroom::Model::Comment
      },

      :comment_ids => {
        :pattern => lambda { |gallery_id| "gallery/#{gallery_id}/comments/ids" },
        :response_model => Darkroom::Model::Basic 
      },

      :comment_count => {
        :pattern => lambda { |gallery_id| "gallery/#{gallery_id}/comments/count" },
        :response_model => Darkroom::Model::Basic 
      },

      :comment => {
        :pattern => lambda { |gallery_id, comment_id| "gallery/#{gallery_id}/comment/#{comment_id}" },
        :response_model => Darkroom::Model::Comment
      }

    }

    build_endpoints
  end
end
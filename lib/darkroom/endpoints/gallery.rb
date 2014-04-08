module Darkroom
  module Gallery
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |args| ["gallery", args].flatten.join('/') },
        :response_model => Darkroom::Model::Gallery
      },

      :memes => {
        :pattern => lambda { |args| ["gallery/g/memes", args].flatten.join('/') },
        :response_model => Darkroom::Model::Gallery
      },

      :subreddit => {
        :pattern => lambda { |args| ["gallery/r/subreddit", args].flatten.join('/') },
        :response_model => Darkroom::Model::Gallery
      },

      :search => {
        :pattern => lambda { |args| ["gallery/search", args[1..-1]].flatten.join('/') + "?q=#{args[0]}" },
        :response_model => Darkroom::Model::Gallery
      },

      :random => {
        :pattern => lambda { |args| "gallery/random/random/#{args[0]}" },
        :response_model => Darkroom::Model::Gallery
      },

      :votes => {
        :pattern => lambda { |args| "gallery/#{args[0]}/votes" },
        :response_model => Darkroom::Model::Vote
      },

      :comments => {
        :pattern => lambda { |args| "gallery/#{args[0]}/comments" },
        :response_model => Darkroom::Model::Comment
      },

      :comment_ids => {
        :pattern => lambda { |args| "gallery/#{args[0]}/comments/ids" },
        :response_model => Darkroom::Model::Basic 
      },

      :comment_count => {
        :pattern => lambda { |args| "gallery/#{args[0]}/comments/count" },
        :response_model => Darkroom::Model::Basic 
      },

      :comment => {
        :pattern => lambda { |args| "gallery/#{args[0]}/comment/#{args[1]}" },
        :response_model => Darkroom::Model::Comment
      }

    }

    build_endpoints
  end
end
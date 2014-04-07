module Darkroom
  class Comment < Darkroom::Model
    extend Darkroom::Endpoint

    @resources = {

      :info => {
        :pattern => lambda { |args| "comment/#{args[0]}" },
        :create  => lambda { |data| Comment.new(data) }
      },

      :replies => {
        :pattern => lambda { |args| "comment/#{args[0]}/replies" },
        :create  => lambda { |data| data['children'].collect {|comment| Comment.new(comment)} }
      }

    }

    def_endpoints
  end
end
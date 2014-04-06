module Darkroom
  class Comment

    @resources = {

      :info => {
        :pattern => lambda { |args| "comment/#{args[0]}" },
        :create  => lambda { |data| Comment.new(data) }
      },

      :replies => {
        :pattern => lambda { |args| "comment/#{args[0]}/replies" },
        :create  => lambda { |data| data.collect {|comment| Comment.new(comment)} }
      }

    }
  end
end
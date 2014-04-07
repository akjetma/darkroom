module Darkroom
  module Comment
    extend Darkroom::Endpoint
    
    @resources = {

      :info => {
        :pattern => lambda { |args| "comment/#{args[0]}" },
        :create  => lambda { |data| Darkroom::Model::Comment.new(data) }
      },

      :replies => {
        :pattern => lambda { |args| "comment/#{args[0]}/replies" },
        :create  => lambda { |data| 
          data['children'] = data['children'].collect {|comment| Darkroom::Model::Comment.new(comment)}
          Darkroom::Model::Comment.new(data)
        }
      }

    }

    build_endpoints
  end
end
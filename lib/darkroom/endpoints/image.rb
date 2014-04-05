module Darkroom
  class Image
    @resources = {

      :info       => lambda { |args| ['image', args[0]] },
      :from_album => lambda { |args| ['album', args[0], 'image', args[1]] }

    }
  end
end
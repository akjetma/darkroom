module Darkroom
  class Model
    class Comment < Darkroom::Model
      @schema = {

        'children' => Darkroom::Model::Comment

      }
    end
  end
end
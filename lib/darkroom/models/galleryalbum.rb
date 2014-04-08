module Darkroom
  class Model
    module Gallery
      class Album < Darkroom::Model
        @schema = {

          'images' => Darkroom::Model::Image

        }
      end
    end
  end
end
module Darkroom
  class Model
    class Album < Darkroom::Model
      @schema = {

        'images' => Darkroom::Model::Image
        
      }
    end
  end
end

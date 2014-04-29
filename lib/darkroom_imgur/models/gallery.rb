module Darkroom
  class Model
    module Gallery
      def self.make(obj)
        if obj['is_album']
          Darkroom::Model::Gallery::Album.new(obj)
        else
          Darkroom::Model::Gallery::Image.new(obj)
        end
      end
    end
  end
end
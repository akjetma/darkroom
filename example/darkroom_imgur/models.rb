module Imgur
  module Model

    class Image < Darkroom::Model
      @schema = {}
    end

    class Account < Darkroom::Model
      @schema = {}
    end

    class Album < Darkroom::Model
      @schema = { 'images' => Imgur::Model::Image }
    end

    class Comment < Darkroom::Model
      @schema = { 'children' => self }
    end

    class GalleryAlbum < Darkroom::Model
      @schema = { 'images' => Imgur::Model::Image }
    end

    class GalleryImage < Darkroom::Model
      @schema = {}
    end

    class GalleryProfile < Darkroom::Model
      @schema = {}
    end


    class Vote < Darkroom::Model
      @schema = {}
    end

    module Gallery
      def self.new(obj)
        if obj['is_album']
          Imgur::Model::GalleryAlbum.new(obj)
        else
          Imgur::Model::GalleryImage.new(obj)
        end
      end
    end
    
  end
end
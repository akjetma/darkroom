module Imgur
  module Endpoint
    class GalleryImage
      extend Darkroom::Endpoint
      
      resource :info,          'gallery/image/:image_id',                     Darkroom::Model::Gallery::Image
      resource :votes,         'gallery/image/:image_id/votes',               Darkroom::Model::Vote,          :many => true
      resource :comments,      'gallery/image/:image_id/comments',            Darkroom::Model::Comment,       :many => true
      resource :comment_ids,   'gallery/image/:image_id/comment_ids',         String,                         :many => true
      resource :comment_count, 'gallery/image/:image_id/comments/count',      Integer
      resource :comment,       'gallery/image/:image_id/comment/:comment_id', Darkroom::Model::Comment
    end
  end
end
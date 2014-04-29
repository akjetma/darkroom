module Imgur
  module Endpoint
    class GalleryAlbum
      include Darkroom::Endpoint
      
      resource :info,          'gallery/album/:album_id',                     Darkroom::Model::Gallery::Album
      resource :votes,         'gallery/album/:album_id/votes',               Darkroom::Model::Vote,          :many => true
      resource :comments,      'gallery/album/:album_id/comments',            Darkroom::Model::Comment,       :many => true
      resource :comment_ids,   'gallery/album/:album_id/comment_ids',         String,                         :many => true
      resource :comment_count, 'gallery/album/:album_id/comments/count',      Integer
      resource :comment,       'gallery/album/:album_id/comment/:comment_id', Darkroom::Model::Comment
    end
  end
end
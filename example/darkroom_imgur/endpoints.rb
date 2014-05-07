module Imgur

  class Album
    extend Darkroom::Endpoint
    resource :info,          'album/:album_id',                             :one => Imgur::Model::Album
    resource :image,         'album/:album_id/image/:image_id',             :one => Imgur::Model::Image
    resource :images,        'album/:album_id/images',                      :many => Imgur::Model::Image
  end

  class Comment
    extend Darkroom::Endpoint
    resource :info,          'comment/:comment_id',                         :one => Imgur::Model::Comment
    resource :replies,       'comment/:comment_id',                         :many => Imgur::Model::Comment
  end

  class Gallery
    extend Darkroom::Endpoint
    resource :info,          'gallery/*args',                               :many => Imgur::Model::Gallery
    resource :memes,         'gallery/g/memes/*args',                       :many => Imgur::Model::Gallery
    resource :subreddit,     'gallery/r/subreddit/*args',                   :many => Imgur::Model::Gallery
    resource :search,        'gallery/search/*args',                        :one => Imgur::Model::Gallery,      :params => ['q']
    resource :random,        'gallery/random/:page',                        :one => Imgur::Model::Gallery
    resource :votes,         'gallery/:gallery_id/votes',                   :many => Imgur::Model::Vote
    resource :comments,      'gallery/:gallery_id/comments',                :many => Imgur::Model::Comment
    resource :comment_ids,   'gallery/:gallery_id/comments/ids',            :many => String
    resource :comment_count, 'gallery/:gallery_id/comments/count',          :one => Integer
    resource :comment,       'gallery/:gallery_id/comment/:comment_id',     :one => Imgur::Model::Comment
  end

  class GalleryAlbum
    extend Darkroom::Endpoint
    resource :info,          'gallery/album/:album_id',                     :one => Imgur::Model::GalleryAlbum
    resource :votes,         'gallery/album/:album_id/votes',               :many => Imgur::Model::Vote
    resource :comments,      'gallery/album/:album_id/comments',            :many => Imgur::Model::Comment
    resource :comment_ids,   'gallery/album/:album_id/comment_ids',         :many => String
    resource :comment_count, 'gallery/album/:album_id/comments/count',      :one => Integer
    resource :comment,       'gallery/album/:album_id/comment/:comment_id', :one => Imgur::Model::Comment
  end

  class GalleryImage
    extend Darkroom::Endpoint
    resource :info,          'gallery/image/:image_id',                     :one => Imgur::Model::GalleryImage
    resource :votes,         'gallery/image/:image_id/votes',               :many => Imgur::Model::Vote
    resource :comments,      'gallery/image/:image_id/comments',            :many => Imgur::Model::Comment
    resource :comment_ids,   'gallery/image/:image_id/comment_ids',         :many => String
    resource :comment_count, 'gallery/image/:image_id/comments/count',      :one => Integer
    resource :comment,       'gallery/image/:image_id/comment/:comment_id', :one => Imgur::Model::Comment
  end

  class Image
    extend Darkroom::Endpoint
    resource :info,          'image/:image_id',                             :one => Imgur::Model::Image
  end

end
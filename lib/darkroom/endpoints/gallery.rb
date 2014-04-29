module Imgur
  module Endpoint
    class Gallery
      include Darkroom::Endpoint
      
      resource :info,          'gallery/*args',                           Darkroom::Model::Gallery
      resource :memes,         'gallery/g/memes/*args',                   Darkroom::Model::Gallery
      resource :subreddit,     'gallery/r/subreddit/*args',               Darkroom::Model::Gallery
      resource :search,        'gallery/search/*args',                    Darkroom::Model::Gallery, :params => ['q']
      resource :random,        'gallery/random/:page',                    Darkroom::Model::Gallery
      resource :votes,         'gallery/:gallery_id/votes',               Darkroom::Model::Vote,    :many => true
      resource :comments,      'gallery/:gallery_id/comments',            Darkroom::Model::Comment, :many => true
      resource :comment_ids,   'gallery/:gallery_id/comments/ids',        String,                   :many => true
      resource :comment_count, 'gallery/:gallery_id/comments/count',      Integer
      resource :comment,       'gallery/:gallery_id/comment/:comment_id', Darkroom::Model::Comment
    end
  end
end
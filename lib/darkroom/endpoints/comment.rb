module Imgur
  module Endpoint
    class Comment
      include Darkroom::Endpoint
      
      resource :info,    'comment/:comment_id', Darkroom::Model::Comment
      resource :replies, 'comment/:comment_id', Darkroom::Model::Comment, :many => true
    end
  end
end
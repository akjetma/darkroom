module Imgur
  module Endpoint
    class Comment
      extend Darkroom::Endpoint
      
      resource :info,    'comment/:comment_id', Darkroom::Model::Comment
      resource :replies, 'comment/:comment_id', Darkroom::Model::Comment, :many => true
    end
  end
end
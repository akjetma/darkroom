module Darkroom
  class Comment
    @resources = {

      :info    => lambda { |args| ['comment', args[0]] },
      :replies => lambda { |args| ['comment', args[0], 'replies'] }

    }
  end
end
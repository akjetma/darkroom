module Darkroom
  class Comment
    @resources = {

      :info => lambda { |*args| ['comment', args[0]] }

    }
  end
end
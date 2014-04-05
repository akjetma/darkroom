module Darkroom
  class Album
    @resources = {

      :info   => lambda { |args| ['album', args[0]] },
      :images => lambda { |args| ['album', args[0], 'images'] }

    }
  end
end
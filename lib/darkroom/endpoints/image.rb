module Darkroom
  class Image
    @resources = {

      :info => {
        :pattern => lambda { |args| "image/#{args[0]}" },
        :create  => lambda { |data| Image.new(data) }
      },

    }
  end
end
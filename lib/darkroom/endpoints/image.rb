module Darkroom
  class Image < Darkroom::Endpoint
    @resources = {

      :info => {
        :pattern => lambda { |args| "image/#{args[0]}" },
        :create  => lambda { |data| Image.new(data) }
      },

    }

    def_endpoints
  end
end
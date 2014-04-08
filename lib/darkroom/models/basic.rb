module Darkroom
  class Model
    class Basic < Darkroom::Model
      def make(obj)
        self.new('data' => obj)
      end
    end
  end
end
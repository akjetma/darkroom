module Darkroom
  module Plugins
    module Path

      def self.parse(path, args={})
        path.split('/').collect! do |part|
          if [':', '*'].include?(part[0])
            args[part[1..-1].to_sym]
          else
            part
          end
        end.flatten.compact.join('/')
      end

    end
  end
end
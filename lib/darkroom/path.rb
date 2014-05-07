module Darkroom
  module Path

    def self.parse(path, args={})
      path.split('/').collect! do |part|
        [':', '*'].include?(part[0]) ? args[part[1..-1].to_sym] : part
      end.flatten.compact.join('/')
    end

  end
end
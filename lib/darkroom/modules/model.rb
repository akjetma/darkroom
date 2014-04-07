module Darkroom
  class Model
    attr_reader :properties
    
    def initialize(response)
      @properties = []
      response.each_pair do |key, val|
        key = "@#{key}".to_sym
        @properties << key
        instance_variable_set(key, val)
      end
    end

    def method_missing(name, *args)
      prop = "@#{name}".to_sym
      if @properties.include?(prop)
        instance_variable_get(prop)
      else
        super
      end
    end

  end
end

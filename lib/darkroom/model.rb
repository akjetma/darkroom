module Darkroom
  class Model
    
    attr_reader :properties
    
    class << self
      attr_reader :schema
    end

    def initialize(obj)
      @properties = []

      self.class.schema.each_pair do |prop, klass|
        obj[prop] = klass.make(obj[prop]) if obj[prop] && !obj[prop].empty?
      end
      
      obj.each_pair do |key, val|
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
module Darkroom
  class Endpoint

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

    def self.def_endpoints
      @resources.keys.each do |name|
        define_singleton_method(name) do |*args|
          path = @resources[name][:pattern].call(args)
          response = Root.get(path)
          @resources[name][:create].call(response['data'])
        end
      end
    end

  end
end

module Darkroom
  
  def self.authorize(client_id)
    Root.resource = RestClient::Resource.new Root.url, :headers => { :authorization => "Client-ID #{client_id}" }
  end

  def self.build
    [Image, Album, Comment].each do |klass|
      def_initialize(klass)
      def_endpoints(klass)
      set_dynamic_accessors(klass)
    end
  end

  def self.def_initialize(klass)
    klass.class_eval do
      def initialize(response)
        @properties = []
        response.each_pair do |key, val|
          key = "@#{key}".to_sym
          @properties << key
          instance_variable_set(key, val)
        end
      end
    end
  end

  def self.def_endpoints(klass)
    klass.instance_eval do
      @resources.keys.each do |name|
        define_singleton_method(name) do |*args|
          path = @resources[name][:pattern].call(args)
          response = Root.get(path)
          @resources[name][:create].call(response['data'])
        end
      end
    end
  end

  def self.set_dynamic_accessors(klass)
    klass.class_eval do
      define_method(:method_missing) do |name, *args|
        prop = "@#{name}".to_sym
        if @properties.include?(prop)
          instance_variable_get(prop)
        else
          super(name, *args)
        end
      end
    end
  end

end
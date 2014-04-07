module Darkroom
  module Endpoint

    def def_endpoints
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
module Darkroom
  module Endpoint

    def resource(name, pattern, model, opts={})
      if opts[:many] == true
        build_block = lambda do |data| 
          data.collect { |obj| model.make(obj) }
        end
      else
        build_block = lambda { |data| model.make(data) }
      end

      define_singleton_method(name) do |args={}|
        path = Darkroom::Plugins::Path.parse(pattern, args)
        response = Darkroom::Root.get(path)
        build_block.call(response['data'])
      end
    end

  end
end

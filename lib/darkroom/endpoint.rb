module Darkroom
  module Endpoint

    def resource(name, pattern, opts={})
      if opts.keys.include?(:many)
        build_block = lambda { |data| data.collect {|obj| opts[:many].new(obj)} }
      else 
        build_block = lambda { |data| opts[:one].new(data) }
      end

      opts[:params] ||= []

      define_singleton_method(name) do |args={}|
        path = Darkroom::Path.parse(pattern, args)
        params = opts[:params].inject({}) do |parmas, key|
          parmas[key] = args[key] if args[key]
          parmas
        end

        response = Darkroom::Root.get(path, params)
        build_block.call(response['data'])
      end
    end

  end
end
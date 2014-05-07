module Darkroom
  module Root

    def self.get(path, params={})
      raw = resource[path + extension].get(params)
      JSON.parse(raw)
    end
    
  end
end
module Darkroom; end
class Darkroom::Model; end
class Darkroom::Model::Account        < Darkroom::Model; end
class Darkroom::Model::Album          < Darkroom::Model; end
class Darkroom::Model::Comment        < Darkroom::Model; end
class Darkroom::Model::Image          < Darkroom::Model; end
class Darkroom::Model::Vote           < Darkroom::Model; end

module Darkroom::Model::Gallery; end
class Darkroom::Model::Gallery::Album   < Darkroom::Model; end
class Darkroom::Model::Gallery::Image   < Darkroom::Model; end
class Darkroom::Model::Gallery::Profile < Darkroom::Model; end

module Darkroom
  
  module Root
    class << self
      attr_accessor :resource, :extension
    end

    def self.get(path, params={})
      raw = resource[path + extension].get(params)
      JSON.parse(raw)
    end
  end


  def self.setup(opts)
    Darkroom::Root.resource = RestClient::Resource.new( opts[:root_url], :headers => opts[:headers] )
    Darkroom::Root.extension = opts[:extension]
  end

end
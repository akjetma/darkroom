Gem::Specification.new do |s|
  s.name        = 'darkroom-imgur'
  s.version     = '0.1.0'
  s.add_runtime_dependency "rest-client"
  s.date        = '2014-05-06'
  s.summary     = "Generic API wrapper"
  s.description = "Map API Endpoints to Ruby Objects"
  s.authors     = ["Adam Jetmalani"]
  s.email       = 'adam.k.jet@gmail.com'
  s.files       = [
                    'lib/darkroom.rb',
                    'lib/darkroom/base.rb',
                    'lib/darkroom/endpoint.rb',
                    'lib/darkroom/model.rb',
                    'lib/darkroom/path.rb',
                    'lib/darkroom/root.rb'
                  ]
  s.homepage    = 'http://github.com/akjetma'
  s.license     = 'MIT'
end
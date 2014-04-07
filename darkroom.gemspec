Gem::Specification.new do |s|
  s.name        = 'darkroom'
  s.version     = '0.0.2'
  s.add_runtime_dependency "rest-client"
  s.date        = '2014-04-04'
  s.summary     = "Exposes the Imgur API!"
  s.description = "See summary"
  s.authors     = ["Adam Jetmalani", "Devin Gaffney"]
  s.email       = 'adam.k.jet@gmail.com'
  s.files       = [
                    'lib/darkroom.rb',
                    'lib/darkroom/utility/config.rb',
                    'lib/darkroom/modules/model.rb',
                    'lib/darkroom/modules/endpoint.rb',
                    'lib/darkroom/endpoints/root.rb',
                    'lib/darkroom/endpoints/image.rb',
                    'lib/darkroom/endpoints/album.rb',
                    'lib/darkroom/endpoints/comment.rb'
                  ]
  s.homepage    = 'http://google.com'
  s.license     = 'MIT'
end
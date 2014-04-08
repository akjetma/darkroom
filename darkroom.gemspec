Gem::Specification.new do |s|
  s.name        = 'darkroom'
  s.version     = '0.0.3'
  s.add_runtime_dependency "rest-client"
  s.date        = '2014-04-04'
  s.summary     = "Exposes the Imgur API!"
  s.description = "See summary"
  s.authors     = ["Adam Jetmalani", "Devin Gaffney"]
  s.email       = 'adam.k.jet@gmail.com'
  s.files       = [
                    'lib/darkroom.rb',
                    'lib/darkroom/utility/config.rb',
                    'lib/darkroom/utility/models.rb',
                    'lib/darkroom/modules/endpoint.rb',
                    'lib/darkroom/modules/model.rb',
                    'lib/darkroom/models/account.rb',
                    'lib/darkroom/models/album.rb',
                    'lib/darkroom/models/basic.rb',
                    'lib/darkroom/models/comment.rb',
                    'lib/darkroom/models/gallery.rb',
                    'lib/darkroom/models/galleryalbum.rb',
                    'lib/darkroom/models/galleryimage.rb',
                    'lib/darkroom/models/galleryprofile.rb',
                    'lib/darkroom/models/image.rb',
                    'lib/darkroom/models/vote.rb',
                    'lib/darkroom/endpoints/root.rb',
                    'lib/darkroom/endpoints/image.rb',
                    'lib/darkroom/endpoints/album.rb',
                    'lib/darkroom/endpoints/comment.rb',
                    'lib/darkroom/endpoints/gallery.rb',
                    'lib/darkroom/endpoints/galleryalbum.rb',
                    'lib/darkroom/endpoints/galleryimage.rb'
                  ]
  s.homepage    = 'http://google.com'
  s.license     = 'MIT'
end
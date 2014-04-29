Gem::Specification.new do |s|
  s.name        = 'darkroom-imgur'
  s.version     = '0.0.0'
  s.add_runtime_dependency "darkroom"
  s.date        = '2014-04-28'
  s.summary     = "Example gem using the Darkoom prototype to expose the Imgur API"
  s.description = "This is currently non-functioning example code to spec how the Darkroom gem will work"
  s.authors     = ["Adam Jetmalani"]
  s.email       = 'adam.k.jet@gmail.com'
  s.files       = [
                    'lib/darkroom_imgur.rb',
                    'lib/darkroom_imgur/models/account.rb',
                    'lib/darkroom_imgur/models/album.rb',
                    'lib/darkroom_imgur/models/comment.rb',
                    'lib/darkroom_imgur/models/gallery.rb',
                    'lib/darkroom_imgur/models/galleryalbum.rb',
                    'lib/darkroom_imgur/models/galleryimage.rb',
                    'lib/darkroom_imgur/models/galleryprofile.rb',
                    'lib/darkroom_imgur/models/image.rb',
                    'lib/darkroom_imgur/models/vote.rb',
                    'lib/darkroom_imgur/endpoints/image.rb',
                    'lib/darkroom_imgur/endpoints/album.rb',
                    'lib/darkroom_imgur/endpoints/comment.rb',
                    'lib/darkroom_imgur/endpoints/gallery.rb',
                    'lib/darkroom_imgur/endpoints/galleryalbum.rb',
                    'lib/darkroom_imgur/endpoints/galleryimage.rb'
                  ]
  s.homepage    = 'http://github.com/akjetma'
  s.license     = 'MIT'
end
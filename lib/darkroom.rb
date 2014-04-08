require 'rest-client'


require_relative 'darkroom/utility/config'
require_relative 'darkroom/utility/models'

require_relative 'darkroom/modules/endpoint'
require_relative 'darkroom/modules/model'

require_relative 'darkroom/models/account'
require_relative 'darkroom/models/album'
require_relative 'darkroom/models/comment'
require_relative 'darkroom/models/gallery'
require_relative 'darkroom/models/galleryalbum'
require_relative 'darkroom/models/galleryimage'
require_relative 'darkroom/models/galleryprofile'
require_relative 'darkroom/models/image'
require_relative 'darkroom/models/vote'

require_relative 'darkroom/endpoints/album'
require_relative 'darkroom/endpoints/comment'
require_relative 'darkroom/endpoints/gallery'
require_relative 'darkroom/endpoints/galleryalbum'
require_relative 'darkroom/endpoints/galleryimage'
require_relative 'darkroom/endpoints/image'
require_relative 'darkroom/endpoints/root'


Darkroom.configure
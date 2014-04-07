require 'rest-client'


require_relative 'darkroom/utility/config'

require_relative 'darkroom/modules/model'
require_relative 'darkroom/modules/endpoint'

require_relative 'darkroom/endpoints/root'
require_relative 'darkroom/endpoints/image'
require_relative 'darkroom/endpoints/album'
require_relative 'darkroom/endpoints/comment'


Darkroom.configure
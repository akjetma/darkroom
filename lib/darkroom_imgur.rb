require 'rest-client'
require 'pry'

require_relative 'darkroom_imgur/plugins/root'
require_relative 'darkroom_imgur/plugins/path'
require_relative 'darkroom_imgur/modules/endpoint'
require_relative 'darkroom_imgur/modules/model'

require_relative 'darkroom_imgur/models/account'
require_relative 'darkroom_imgur/models/album'
require_relative 'darkroom_imgur/models/comment'
require_relative 'darkroom_imgur/models/gallery'
require_relative 'darkroom_imgur/models/galleryalbum'
require_relative 'darkroom_imgur/models/galleryimage'
require_relative 'darkroom_imgur/models/image'
require_relative 'darkroom_imgur/models/vote'

require_relative 'darkroom_imgur/endpoints/album'
require_relative 'darkroom_imgur/endpoints/comment'
require_relative 'darkroom_imgur/endpoints/gallery'
require_relative 'darkroom_imgur/endpoints/galleryalbum'
require_relative 'darkroom_imgur/endpoints/galleryimage'
require_relative 'darkroom_imgur/endpoints/image'

Darkroom.setup({
  :root_url => 'https://api.imgur.com/3', 
  :extension => '.json', 
  :headers => { :authorization => "Client-ID #{ ENV['IMGUR_CLIENT_ID'] }" }
})
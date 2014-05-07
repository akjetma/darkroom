require_relative '../lib/darkroom.rb'

require_relative 'darkroom_imgur/models'
require_relative 'darkroom_imgur/endpoints'

Darkroom.setup({
  :root_url => 'https://api.imgur.com/3', 
  :extension => '.json', 
  :headers => { :authorization => "Client-ID #{ ENV['IMGUR_CLIENT_ID'] }" }
})
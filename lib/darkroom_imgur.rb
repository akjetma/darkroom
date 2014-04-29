require 'darkroom'

Darkroom.setup({
  :root_url => 'https://api.imgur.com/3', 
  :extension => '.json', 
  :headers => { :authorization => "Client-ID #{ ENV['IMGUR_CLIENT_ID'] }" }
})
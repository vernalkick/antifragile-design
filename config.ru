require 'rubygems'
require 'bundler'
Bundler.require

map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/javascripts'
  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/images'
  run sprockets

  AutoprefixerRails.install(sprockets)
end

require './lib/antifragile'
run Antifragile

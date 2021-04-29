require "bundler"
Bundler.require

require "./lib/app/board.rb"
require "./lib/app/boardcase.rb"
require "./lib/app/game.rb"
require "./lib/app/player.rb"
require "./lib/views/application.rb"
require "./lib/views/show.rb"

system "clear"
Application.new.perform

##show1 = Show.new([[" ", "x", " "], [" ", "o", " "], [" ", " ", "x"]])
##show1.display

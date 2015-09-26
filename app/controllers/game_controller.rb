class GameController < ApplicationController
	def play
		@map = Map.first
	end
end

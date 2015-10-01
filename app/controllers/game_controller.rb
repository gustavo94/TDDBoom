class GameController < ApplicationController
	def play
		@map = Map.find params[:map]
		@team = Team.find params[:team]
	end
end

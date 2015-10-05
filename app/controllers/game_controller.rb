class GameController < ApplicationController
	def play
		@map = Map.find params[:map]
		@team = Team.find params[:team]
	end

	def chosen_map
		@team = Team.find params[:team]
		@maps = Map.all
	end

	def assign_map
		@team = Team.find params[:team]
		@team.assign_map(params[:map])
		redirect_to play_path(params[:team],params[:map])
	end
end

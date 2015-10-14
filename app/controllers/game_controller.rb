class GameController < ApplicationController
	def play
		@team = Team.find params[:team]
		@map_team = MapsTeam.where(team_id: params[:team], map_id: params[:map]).first	
		@map = @map_team.map
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

	def reset
		Team.update_all(resources: 500)
		MapsTeam.delete_all
		render nothing: true
	end

	def end_game
		@winners = MapsTeam.winner
		render text: @winners
	end
end

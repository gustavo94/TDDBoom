class TeamsController < ApplicationController
	def create
		@team = Team.create(name: params[:team_name])
		@teams = Team.all
		render  partial: 'list_teams'
	end

	def destroy
		@team = Team.find(params[:team_id])
		@team.destroy
		@teams = Team.all
		render  partial: 'list_teams'
	end

	def reset_resources
		resources = Team::DEFAULT_RESOURCES
		resources = params[:resources] unless params[:resources].nil? or params[:resources].empty?
		Team.update_all(resources: resources)
		@teams = Team.all
		render  partial: 'list_teams'
	end

	def update_resources
		@team = Team.find params[:team]
		@team.update_resources_and_map params[:resources],params[:map]
		render nothing:true
	end
end
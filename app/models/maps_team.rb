class MapsTeam < ActiveRecord::Base
	belongs_to :team
	belongs_to :map
	validates_uniqueness_of :team_id , scope: :map_id

	def self.winner
		teams_solved_count = MapsTeam.where(solved: true).group(:team_id).count
		if teams_solved_count.empty?
			winner_team = Team.first
			teams_solved_count = Team.all.map { |team| [team.id] }
		else
			max_solved = MapsTeam.where(solved: true).group(:team_id).count.max[1]
			aux_teams_count = teams_solved_count
			teams_solved_count = []
			aux_teams_count.each do |solved_count|
				teams_solved_count << solved_count if solved_count[1] == max_solved
			end
			team_id = MapsTeam.where(solved: true).group(:team_id).count.first[0]
			winner_team = Team.find team_id
		end
		winners = []
		winners << winner_team

		teams_solved_count.each do |team|
			resources = Team.find(team[0]).resources
			if (resources > winner_team.resources)
				winner_team = Team.find(team[0])
				winners = [winner_team]
			elsif resources == winner_team.resources and !winners.include? Team.find(team[0])
				winner_team = Team.find(team[0])
				winners << winner_team
			end
		end
		return winners.collect(&:name).join(" , ")
	end
end

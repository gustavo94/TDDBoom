class Team < ActiveRecord::Base
	has_many :maps_teams
	validates_uniqueness_of :name
	validate :max_teams
	default_scope {order('created_at DESC')}

	DEFAULT_RESOURCES = 1000
	
	def max_teams
		if Team.count >= 6
			self.errors[:max] = "Can't create more than 6 Team"
			return false
		end
	end

	def assign_map(map_id)
		map_team = MapsTeam.create(team_id: self.id,map_id: map_id,solved: false)
		map_team.save
	end

	def has_map?(map_id)
		!self.maps_teams.where(map_id: map_id).empty?
	end

	def solved_map?(map_id)
		return false if !self.has_map?(map_id)
		solved = self.maps_teams.where(map_id: map_id).first.solved
		return false if solved.nil?
		solved
	end

	def next_team
		next_team = Team.where("id < ?",self.id).first
		next_team = (next_team.nil?)? Team.first : next_team
	end

	def update_resources_and_map(resources,map_id)
		self.resources = resources
		self.save
		MapsTeam.where(map_id: map_id, team_id: self.id).update_all(solved: true)
	end
end

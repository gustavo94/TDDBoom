class Team < ActiveRecord::Base
	has_and_belongs_to_many :maps
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
		self.maps << Map.find(map_id)
		self.save
	end
end

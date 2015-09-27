class Team < ActiveRecord::Base
	has_and_belongs_to_many :maps
	validates_uniqueness_of :name
	validate :max_teams


	DEFAULT_RESOURCES = 1000
	
	def max_teams
		if Team.count >= 6
			self.errors[:max] = "Can't create more than 6 Team"
			return false
		end
	end
end

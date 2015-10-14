class Map < ActiveRecord::Base
	has_many :maps_teams
	serialize :board
	LEVEL = {easy: 6, hard: 8}
end

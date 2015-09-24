class Map < ActiveRecord::Base
	has_and_belongs_to_many :teams
	serialize :board
	LEVEL = {easy: 2, hard: 5}
end

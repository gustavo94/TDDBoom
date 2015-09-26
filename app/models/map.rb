class Map < ActiveRecord::Base
	has_and_belongs_to_many :teams
	serialize :board
	LEVEL = {easy: 6, hard: 8}
end

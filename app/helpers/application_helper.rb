module ApplicationHelper
	def team_color(number)
		case number
			when 0
				return "red"
			when 1
				return "purple"
			when 2
				return "blue"
			when 3
				return "green"
			when 4
				return "lime"
			when 5
				return "yellow"
			when 6
				return "orange"
			else
				return "blue-gray"
		end
	end
end

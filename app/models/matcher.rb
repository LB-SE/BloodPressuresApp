class Matcher < ApplicationRecord

	OPERATORS = ["gt", "gte", "lt", "lte"]

	def validate
		comparison_value

		check_query = true

		queries.each do |operator, value|
			if not (operator == "gt" && comparison_value > value)
				check_query = false
			elsif not (operator == "gte" && comparison_value >= value)
				check_query = false
			elsif not (operator == "lt" && comparison_value < value)
				check_query = false
			elsif not (operator == "lte" && comparison_value <= value)
				check_query = false
			end
		end

		return check_query
	end
end
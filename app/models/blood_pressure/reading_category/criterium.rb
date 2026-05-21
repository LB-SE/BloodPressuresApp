class BloodPressure::ReadingCategory::Criterium < ApplicationRecord
	def validate(comparison_value)
		systolic_match = Matcher.Check(criteria["systolic"], comparison_value)
		diastolic_match = Matcher.Check(criteria["disatolic"], comparison_value)

		if (criteria["match"] == "any")
			if (systolic_match || diastolic_match)
				return true
			end
		elsif (criteria["match"] == "all")
			if (systolic_match && diastolic_match)
				return true
			end
		end

		false
	end
end

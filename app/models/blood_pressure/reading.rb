class BloodPressure::Reading < ApplicationRecord
	# Process the reading
	@BloodPressureReading
	reading_categories = ReadingCatagories.all

	# Find a correct category
	for reading_categories.map do |reading_category|
		criteria = reading_category["criteria"]

		systolic_match = Matcher.Check(criteria["systolic"])
		diastolic_match = Matcher.Check(criteria["disatolic"])

		if (criteria["match"] == "any")
			if (systolic_match || diastolic_match)
				
			end
		elsif (criteria["match"] == "all")
			if (systolic_match && diastolic_match)

			end
		end
	end
end

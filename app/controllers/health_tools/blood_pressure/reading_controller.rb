class HealthTools::BloodPressure::ReadingController < ApplicationController
	def index
		@Reading = BloodPressure::Reading.new
	end

	def create
		@Reading = BloodPressure::Reading.new(params_blood_pressure_reading)

		if @Reading.save
			#render :show
		else
			render :index
		end
	end

	def show

	end

	private

	def params_blood_pressure_reading
		params.require(:blood_pressure_reading).permit(:systolic, :diastolic)
	end
end

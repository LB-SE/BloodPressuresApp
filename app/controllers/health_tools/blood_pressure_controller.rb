class HealthTools::BloodPressureController < ApplicationController
	def index
		@BloodPressureReading = BloodPressure::Reading.new
	end

	def create
		@BloodPressureReading = BloodPressure::Reading.new(params_blood_pressure_reading)

		if @BloodPressureReading.save
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

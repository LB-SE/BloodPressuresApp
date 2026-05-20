class HealthTools::BloodPressureController < ApplicationController
	def index
		render :new
	end

	def new
		@BloodPressureReading = BloodPressure::Reading.new(params)

		puts params
	end

	def show

	end

	private

	def params_reading
		params.require(:blood_pressure_reading).permit(:systolic, :diastolic)
	end
end
class User < ApplicationRecord
	belongs_to :doctor

	validates :birth_date, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
end

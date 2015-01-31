class Job < ActiveRecord::Base
	has_many :applications
	has_many :applicants, through: :applications
end

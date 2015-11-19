class Assignment < ActiveRecord::Base

	belongs_to :plan
	belongs_to :activity
	has_many :plan_assignments
	has_many :plans, through: :plan_assignments
	
end

class Assignment < ActiveRecord::Base

	belongs_to :plan
	belongs_to :category
	belongs_to :activity
	has_many :plan_assignments
	has_many :plans, through: :plan_assignments
	has_many :assignment_employees
	has_many :employees, through: :assignment_employees


def details
	" #{name} - #{due_at} "
end




	
end

class Meeting < ActiveRecord::Base

	has_many :employees
	has_many :plans
	has_many :meeting_employees
	has_many :employees, through: :meeting_employees
	belongs_to :company

def show_plans
	@plan = Plan.all
end

end

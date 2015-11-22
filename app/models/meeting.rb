class Meeting < ActiveRecord::Base

	has_many :employees
	has_many :plans
	has_many :meeting_employees
	has_many :employees, through: :meeting_employees
	belongs_to :company

def list
plan.where('meeting_id =?',id)
end

def list_name
plan.where('meeting_id =?',id).pluck(:name)
end

def show_plans
	@plan = Plan.where("start_date > ?", Date.today)
end

def self.details
	Plan.where("start_date > ?", Date.today)	
end

end

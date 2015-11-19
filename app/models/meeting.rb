class Meeting < ActiveRecord::Base

	has_many :employees
	has_many :plans
	has_many :meeting_employees
	has_many :employees, through: :meeting_employees
	belongs_to :company
	
end

class Wing < ActiveRecord::Base

	has_many :employees
	has_many :wing_employees
	has_many :employees, through: :wing_employees
	
end

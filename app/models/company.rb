class Company < ActiveRecord::Base

	has_many :meetings
	has_many :employees
	
end

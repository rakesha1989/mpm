class WingEmployee < ActiveRecord::Base

	belongs_to :wing
	belongs_to :employee
	
end

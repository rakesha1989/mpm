class MeetingEmployee < ActiveRecord::Base

	belongs_to :meeting
	belongs_to :employee
	
end

class Plan < ActiveRecord::Base
	
	belongs_to :meeting
	belongs_to :priority
	belongs_to :status
	has_many :plan_categories
	has_many :categories, through: :plan_categories
	has_many :plan_assignments
	has_many :assignments, through: :plan_assignments
	
def details
	"#{name} - #{start_date} - #{rating}"
end

def list
Assignment.where('plan_id =?',id)
end

def list_name
Assignment.where('plan_id =?',id).pluck(:name)
end

def self.completed_assignments
	Assignment.where("status = ?", true)

end

def self.assigned_assigned_assignments
	Assignment.where("status = ? AND due_at >= ?", false,Date.today)

end

def self.pending_assignments(date)
	Assignment.where("due_at < ? AND status = ?", date,false)

end


end

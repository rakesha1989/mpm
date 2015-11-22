class Plan < ActiveRecord::Base
	
	has_many :assignments
	belongs_to :meeting
	belongs_to :priority
	belongs_to :status
	has_many :plan_categories
	has_many :categories, through: :plan_categories
	has_many :plan_assignments
	has_many :assignments, through: :plan_assignments
	
	def details
	"#{name} - #{status} - #{start_date} - #{priority}"
end
end

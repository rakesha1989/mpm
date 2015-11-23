class Assignment < ActiveRecord::Base

	belongs_to :plan
	belongs_to :activity
	has_many :plan_assignments
	has_many :plans, through: :plan_assignments


def details
	" #{name} - #{due_at} "
end


def mark_as_complete
		@assignment = Assignment.find(params[:assignment_id])
		@assignment.update_attributes(status: true)
		redirect_to :back
	end

	def mark_as_incomplete
		@assignment = Assignment.find(params[:task_id])
		@assignment.update_attributes(status: false)
		redirect_to :back
	end

def completed_assignments

end

	
end

class RemoveMonthFromMeetings < ActiveRecord::Migration
  def change
  	remove_column :meetings, :month, :date
  end
end

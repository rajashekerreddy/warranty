class AddAttDateToAttendenceChild < ActiveRecord::Migration
  def change
    add_column :attendence_children, :att_date, :date
  end
end

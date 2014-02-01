class AddAttdateToAttendence < ActiveRecord::Migration
  def change
    add_column :attendences, :att_date, :date
  end
end

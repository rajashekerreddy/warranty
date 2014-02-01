class AddSubjectToAttendence < ActiveRecord::Migration
  def change
    add_column :attendences, :subject, :string
  end
end

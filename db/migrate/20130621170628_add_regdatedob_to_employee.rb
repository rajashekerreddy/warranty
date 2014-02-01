class AddRegdatedobToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :dob, :date
    add_column :employees, :reg_date, :date
  end
end

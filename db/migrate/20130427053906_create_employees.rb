class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :emp_name
      t.string :designation
      t.string :adress
      t.string :salary_type
      t.float :salary

      t.timestamps
    end
  end
end

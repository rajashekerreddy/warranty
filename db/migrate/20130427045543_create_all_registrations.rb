class CreateAllRegistrations < ActiveRecord::Migration
  def change
    create_table :all_registrations do |t|
      t.string :roll_no
      t.string :reg_no
      t.string :first_name
      t.string :last_name
      t.string :father_name
      t.string :ph_no
      t.string :gender
      t.date :dob
      t.integer :age
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :hall_ticket
   #   t.string :category
    #  t.string :group
     # t.string :year
      t.float :reg_fee
      t.date :reg_date

      t.timestamps
    end
  end
end

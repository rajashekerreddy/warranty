class CreateCollegeFees < ActiveRecord::Migration
  def change
    create_table :college_fees do |t|
      t.string :hall_no
      t.datetime :bill_date_time
      t.float :last_paid_amt
      t.integer :this_time_pay
      t.integer :till_now_paid

      t.timestamps
    end
  end
end

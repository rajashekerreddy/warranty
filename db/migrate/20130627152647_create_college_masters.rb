class CreateCollegeMasters < ActiveRecord::Migration
  def change
    create_table :college_masters do |t|
      t.string :college_name
      t.string :college_code
      t.string :category
      t.text :address
      t.string :ph_no
      t.string :mobile_no

      t.timestamps
    end
  end
end

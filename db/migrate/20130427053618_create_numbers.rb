class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :n_type
      t.integer :start_value

      t.timestamps
    end
  end
end

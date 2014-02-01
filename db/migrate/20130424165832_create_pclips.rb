class CreatePclips < ActiveRecord::Migration
  def change
    create_table :pclips do |t|
      t.string :files
      t.string :size1

      t.timestamps
    end
  end
end

class CreateGtpls < ActiveRecord::Migration
  def change
    create_table :gtpls do |t|
      t.string :attributes

      t.timestamps
    end
  end
end

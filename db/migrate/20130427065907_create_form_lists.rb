class CreateFormLists < ActiveRecord::Migration
  def change
    create_table :form_lists do |t|
      t.string :form_name

      t.timestamps
    end
  end
end

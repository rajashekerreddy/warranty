class CreateAllRegistrationChildren < ActiveRecord::Migration
  def change
    create_table :all_registration_children do |t|

      t.timestamps
    end
  end
end

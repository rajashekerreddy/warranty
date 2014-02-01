class CreateProfilemasters < ActiveRecord::Migration
  def change
    create_table :profilemasters do |t|
      t.string :profile_name

      t.timestamps
    end
  end
end

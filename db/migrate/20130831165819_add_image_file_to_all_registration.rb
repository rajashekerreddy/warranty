class AddImageFileToAllRegistration < ActiveRecord::Migration
  def change
    add_column :all_registrations, :image_file, :string
  end
end

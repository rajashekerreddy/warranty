class AddGroupToYear < ActiveRecord::Migration
  def change
    add_column :years, :group, :string
  end
end

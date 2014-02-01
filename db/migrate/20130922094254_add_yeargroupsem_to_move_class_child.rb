class AddYeargroupsemToMoveClassChild < ActiveRecord::Migration
  def change
    add_column :move_class_children, :year, :integer
    add_column :move_class_children, :group, :integer
    add_column :move_class_children, :semester, :integer
  end
end

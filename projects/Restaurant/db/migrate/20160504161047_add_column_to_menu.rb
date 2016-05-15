class AddColumnToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :kind, :string
    add_column :menus, :description, :text
  end
end

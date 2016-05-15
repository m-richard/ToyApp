class AddColumnToFood < ActiveRecord::Migration
  def change
    add_column :foods, :kind, :string
    add_column :foods, :description, :text
  end
end

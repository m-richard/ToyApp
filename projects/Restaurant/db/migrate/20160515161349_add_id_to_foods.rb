class AddIdToFoods < ActiveRecord::Migration
  def change
    add_reference :foods, :menu, index: true, foreign_key: true
  end
end

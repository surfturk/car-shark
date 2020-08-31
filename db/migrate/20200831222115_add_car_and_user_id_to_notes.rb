class AddCarAndUserIdToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :user_id, :integer
    add_column :notes, :car_id, :integer
  end
end

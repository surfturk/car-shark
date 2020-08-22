class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :customer_name
      t.string :manufacturer, default: "Chevrolet"
      t.string :model
      t.integer :year
      t.timestamps
    end
  end
end

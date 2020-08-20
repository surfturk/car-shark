class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      t.string :category
      t.integer :amount
      t.belongs_to :user
      t.belongs_to :car

      t.timestamps
    end
  end
end

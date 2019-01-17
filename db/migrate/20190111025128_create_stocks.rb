class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :code, unique: true, null: false
      t.string :name, null: false

      t.timestamps
    end
    add_index :stocks, :code, unique: true
  end
end

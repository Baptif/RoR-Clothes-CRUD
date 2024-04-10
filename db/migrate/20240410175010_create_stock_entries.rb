class CreateStockEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :stock_entries do |t|
      t.integer :quantity
      t.string :location

      t.timestamps
    end
  end
end

class AddArticleIdToStockEntries < ActiveRecord::Migration[7.1]
  def change
    add_reference :stock_entries, :article, null: false, foreign_key: true
  end
end

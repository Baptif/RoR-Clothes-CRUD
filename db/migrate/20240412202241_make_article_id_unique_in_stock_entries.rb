class MakeArticleIdUniqueInStockEntries < ActiveRecord::Migration[7.1]
  def change
    remove_index :stock_entries, :article_id
    add_index :stock_entries, :article_id, unique: true
  end
end

class AddBrandIdToArticles < ActiveRecord::Migration[7.1]
  def change
    add_reference :articles, :brand, null: false, foreign_key: true
  end
end

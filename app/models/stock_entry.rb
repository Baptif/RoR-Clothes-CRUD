# == Schema Information
#
# Table name: stock_entries
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer          not null
#
class StockEntry < ApplicationRecord
    belongs_to :article

    validates :quantity, presence: true, numericality: true
    validates :location, presence: true
    validates_uniqueness_of :article_id, message: "already has a stock entry"
end

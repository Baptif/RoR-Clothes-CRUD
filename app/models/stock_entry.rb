# == Schema Information
#
# Table name: stock_entries
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class StockEntry < ApplicationRecord
    belongs_to :article
end

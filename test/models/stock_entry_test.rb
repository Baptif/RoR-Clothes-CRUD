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
require "test_helper"

class StockEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

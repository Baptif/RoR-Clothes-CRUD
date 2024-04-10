# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Article < ApplicationRecord
    belongs_to :brand
    has_one :stock_entries
    has_and_belongs_to_many :collections

    validates :name, presence: true
end

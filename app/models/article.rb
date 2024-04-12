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
#  brand_id    :integer          not null
#
class Article < ApplicationRecord
    belongs_to :brand
    has_one :stock_entry, dependent: :destroy
    accepts_nested_attributes_for :stock_entry
    has_and_belongs_to_many :collections

    validates :name, presence: true, uniqueness: true
    validates :price, presence: true, numericality: true
end

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
    validates :price, presence: true, numericality: { less_than_or_equal_to: 9999.99}
    validate :validate_name_format

    private

    def validate_name_format
      if (name =~ /[^\w\s-]/)
        errors.add(:name, "should only contain letters, numbers, spaces and hyphens")
      end
  
      if name.length > 20
        errors.add(:name, "must not exceed 20 characters")
      end
    end
end

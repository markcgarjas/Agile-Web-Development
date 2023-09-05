# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.1 }
  validates :title, uniqueness: true

  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    return unless line_items.present?

    errors.add(:base, 'Product delete failed: Line items present')
    throw :abort
  end
end

# frozen_string_literal: true

class AddQualityToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :quantity, :integer, default: 1
  end
end

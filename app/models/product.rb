class Product < ApplicationRecord
    has_many :line_items, dependent: :destroy
    belongs_to :shop, :optional => false
    has_many :reviews
end

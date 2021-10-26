class Product < ApplicationRecord
    belongs_to :shop, :optional => false
    has_many :line_items, :dependent => :destroy
end

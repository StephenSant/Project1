class Product < ApplicationRecord
    has_many :line_items, dependent: :destroy
    belongs_to :shop, :optional => false
    has_many :reviews

    def self.search(search)
        if search
            where(["name ILIKE ?","%#{search}%"])
        else
            all
        end
    end
end

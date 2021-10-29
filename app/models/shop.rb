class Shop < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :products

    def self.search(search)
        if search
            where(["name ILIKE ?","%#{search}%"])
        else
            all
        end
    end
end

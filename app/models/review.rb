class Review < ApplicationRecord
    belongs_to :user, :optional => false
    belongs_to :product, :optional => false
end

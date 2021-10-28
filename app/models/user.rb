class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    has_secure_password
    has_many :orders
    has_one :cart
    has_and_belongs_to_many :shops
    has_many :reviews
end

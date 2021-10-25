class User < ApplicationRecord
    has_and_belongs_to_many :shops

    validates :username, :presence => true, :uniqueness => true
    validates :email, :presence => true, :uniqueness => true
    has_secure_password
end

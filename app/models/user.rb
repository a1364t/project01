class User < ApplicationRecord
    has_secure_password
    validates :email, :presence => true, :uniqueness => true
    validates :password, length: { in: 6..20 }
    has_many :rents
    has_many :sells
end

class Agent < ApplicationRecord
    has_many :rents
    has_many :sells
end

class Sell < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :rents
    belongs_to :agent, :optional => true
end

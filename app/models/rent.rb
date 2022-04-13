class Rent < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :sells
    belongs_to :agent, :optional => true
end

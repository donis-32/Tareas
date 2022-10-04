class Team < ApplicationRecord
    has_one :groups
    validates :name, presence: true
end

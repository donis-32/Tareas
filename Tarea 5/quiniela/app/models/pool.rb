class Pool < ApplicationRecord
    has_many :games
    has_one :users
end

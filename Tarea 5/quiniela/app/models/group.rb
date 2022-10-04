class Group < ApplicationRecord
    belongs_to :teams, class_name: "teams", foreign_key: "teams_id"
end

class Tag < ApplicationRecord
    has_and_belongs_to_many :teams
    has_and_belongs_to_many :projects
    has_and_belongs_to_many :events
    has_and_belongs_to_many :profiles
end

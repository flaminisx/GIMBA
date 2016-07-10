class Team < ApplicationRecord
	has_and_belongs_to_many :tags
	has_many :projects
end

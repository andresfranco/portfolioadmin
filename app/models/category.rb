class Category < ApplicationRecord
    belongs_to :knowledge_area
    has_many :skills
end

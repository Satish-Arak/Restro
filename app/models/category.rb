class Category < ApplicationRecord
    belongs_to :restro
    has_many :items
end

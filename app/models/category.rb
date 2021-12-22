class Category < ApplicationRecord
    belongs_to :restro
    has_and_belongs_to_many :items
end

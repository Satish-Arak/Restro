class Category < ApplicationRecord
    belongs_to :restro
    has_many :sub_categories
end

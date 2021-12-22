class Restro < ApplicationRecord
    has_many :categories
    has_many :items
    has_many :orders
    has_many :users
end

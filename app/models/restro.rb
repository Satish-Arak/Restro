class Restro < ApplicationRecord
    has_many :categories, dependent: :destroy

    has_many :orders, dependent: :destroy
    has_many :users, dependent: :destroy
end

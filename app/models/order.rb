class Order < ApplicationRecord
    belongs_to :restro
    has_many :order_items
    has_many :items, through: :order_items
end

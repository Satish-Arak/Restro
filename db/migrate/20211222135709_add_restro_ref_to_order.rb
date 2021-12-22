class AddRestroRefToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :restro, null: false, foreign_key: true
  end
end

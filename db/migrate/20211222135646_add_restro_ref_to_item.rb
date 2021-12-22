class AddRestroRefToItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :restro, null: false, foreign_key: true
  end
end

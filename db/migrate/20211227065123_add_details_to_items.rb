class AddDetailsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :price, :decimal
  end
end

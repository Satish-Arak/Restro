class AddSubCategoryRefToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :sub_category, null: true, foreign_key: true
  end
end

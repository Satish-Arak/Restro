class CreateRestros < ActiveRecord::Migration[6.1]
  def change
    create_table :restros do |t|
      t.string :name

      t.timestamps
    end
  end
end

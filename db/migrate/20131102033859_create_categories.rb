class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :types
      t.integer :store_id

      t.timestamps
    end
  end
end

class CreateCategoryBees < ActiveRecord::Migration[5.1]
  def change
    create_table :category_bees do |t|
      t.integer :category_id
      t.integer :bee_id

      t.timestamps
    end
  end
end

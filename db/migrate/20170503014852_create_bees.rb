class CreateBees < ActiveRecord::Migration[5.1]
  def change
    create_table :bees do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end

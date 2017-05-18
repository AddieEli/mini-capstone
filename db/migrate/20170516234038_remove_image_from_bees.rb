class RemoveImageFromBees < ActiveRecord::Migration[5.1]
  def change
    remove_column :bees, :image, :string
  end
end

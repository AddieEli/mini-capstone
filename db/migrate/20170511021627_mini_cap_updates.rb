class MiniCapUpdates < ActiveRecord::Migration[5.1]
  def change
    change_column :bees, :price, :decimal, precision: 9, scale: 2
  end
end

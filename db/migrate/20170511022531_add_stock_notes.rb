class AddStockNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :bees, :stock_note, :boolean, default: true
  end
end

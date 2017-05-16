class AddedSupplierId < ActiveRecord::Migration[5.1]
  def change
    add_column :bees, :supplier_id, :integer
  end
end

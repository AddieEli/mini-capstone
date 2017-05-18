class AddBeeIdToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :bee_id, :integer
  end
end

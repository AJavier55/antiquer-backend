class AddQuantityAvailableToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :quantityAvailable, :integer
  end
end

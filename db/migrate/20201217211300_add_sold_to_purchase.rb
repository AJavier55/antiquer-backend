class AddSoldToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :sold, :boolean, default: false
    
  end
end

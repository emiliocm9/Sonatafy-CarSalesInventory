class AddDealerShipToCar < ActiveRecord::Migration[5.2]
  def up
    add_reference :cars, :dealer_ship, index: true
  end

  def down
    remove_column :cars, :dealer_ship_id
  end
end

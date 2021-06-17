class CreateDealerShips < ActiveRecord::Migration[5.2]
  def change
    create_table :dealer_ships do |t|
      t.string :name
    end
  end
end

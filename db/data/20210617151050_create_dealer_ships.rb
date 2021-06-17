class CreateDealerShips < ActiveRecord::Migration[5.2]
  def up
    DealerShip.create(name: 'Toyota')
    DealerShip.create(name: 'Nissan')
    DealerShip.create(name: 'Ford')
    DealerShip.create(name: 'Honda')
    DealerShip.create(name: 'Porsche')
    DealerShip.create(name: 'BMW')
    DealerShip.create(name: 'Volkswagen')
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

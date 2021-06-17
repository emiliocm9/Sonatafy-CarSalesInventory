class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.decimal :price
      t.string :status
    end
  end
end

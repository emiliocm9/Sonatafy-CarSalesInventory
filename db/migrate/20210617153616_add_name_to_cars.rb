class AddNameToCars < ActiveRecord::Migration[5.2]
  def up
    add_column :cars, :name, :string
  end

  def down
    remove_column :cars, :name
  end
end

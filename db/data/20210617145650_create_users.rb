class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    User.create(name: 'userAdmin1', role: 'admin')
    User.create(name: 'userAdmin2', role: 'admin')
    User.create(name: 'user1', role: 'user')
    User.create(name: 'user2', role: 'user')
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

class AddPasswordSaltAndHash < ActiveRecord::Migration
  def up

  add_column :users, :password_hash, :string
  add_column :users, :password_salt, :string
  end

  def down
  end
end

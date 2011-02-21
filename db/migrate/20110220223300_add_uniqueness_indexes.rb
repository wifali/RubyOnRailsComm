class AddUniquenessIndexes < ActiveRecord::Migration
  def self.up
    add_index :users, :account_name, :unique => true
    add_index :users, :email, :unique => true
  end

  def self.down
    remove_index :users, :account_name
    remove_index :users, :email
  end
end

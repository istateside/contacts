class AddIndexToUsernameInUser < ActiveRecord::Migration
  def change
    add_index :users, :username, unique: true
  end
end

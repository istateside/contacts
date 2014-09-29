class RemovingNameAndEmailFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :name, :email
  end
end

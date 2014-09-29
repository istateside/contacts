class CreateContactShares < ActiveRecord::Migration
  def change
    create_table :contact_shares do |t|
      t.integer :contact_id, present: true
      t.integer :user_id, present: true

      t.timestamps
    end

    add_index(:contact_shares, [:user_id, :contact_id], unique: true)
  end
end

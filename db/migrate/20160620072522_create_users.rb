class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :admin_level, :default => 0
      t.integer :record_limit, :default => 30
      t.timestamps null: false
      t.integer :item_id
      t.string :contact_email
      
      t.integer :jp_market_place_id
      t.integer :jp_markchant_id
      t.integer :jp_access_key_id
      t.integer :jp_secret_key
  
      t.integer :com_market_place_id
      t.integer :com_markchant_id
      t.integer :com_access_key_id
      t.integer :com_secret_key
      
      
    end
    add_index :users, :email,                unique: true
  end
end

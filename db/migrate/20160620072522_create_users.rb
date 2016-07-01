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
      
      t.string :jp_market_place_id
      t.string :jp_markchant_id
      t.string :jp_access_key_id
      t.string :jp_secret_key
  
      t.string :com_market_place_id
      t.string :com_markchant_id
      t.string :com_access_key_id
      t.string :com_secret_key
      
      
    end
    add_index :users, :email,                unique: true
  end
end

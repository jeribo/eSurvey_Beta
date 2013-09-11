class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :type_address
      t.references :state
      t.references :city
      t.string :description
      t.string :postal_code
      t.datetime :inactivated_at

      t.timestamps
    end
    add_index :addresses, :type_address_id
    add_index :addresses, :state_id
    add_index :addresses, :city_id
  end
end

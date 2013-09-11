class CreateTypeAddresses < ActiveRecord::Migration
  def change
    create_table :type_addresses do |t|
      t.string :description
      t.datetime :inactivated_at

      t.timestamps
    end
  end
end

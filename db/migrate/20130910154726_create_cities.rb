class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :description
      t.string :postal_code
      t.references :state
      t.references :contry
      t.datetime :inactivated_at

      t.timestamps
    end
    add_index :cities, :state_id
    add_index :cities, :contry_id
  end
end

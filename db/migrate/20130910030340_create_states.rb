class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description
      t.references :country
      t.string :abbreviated
      t.datetime :inactivated_at

      t.timestamps
    end
    add_index :states, :country_id
  end
end

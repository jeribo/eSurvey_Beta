class RemovePostalCodeFromCities < ActiveRecord::Migration
  def up
    remove_column :cities, :postal_code
  end

  def down
  end
end

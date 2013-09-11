class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :description
      t.string :locale
      t.datetime :inactivated
      t.string :abbreviated

      t.timestamps
    end
  end
end

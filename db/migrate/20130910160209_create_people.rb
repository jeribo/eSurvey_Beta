class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :federal_id
      t.string :regional_id
      t.string :social_security
      t.date :birthday
      t.string :email
      t.datetime :inactivated_at
      t.string :mothers_name
      t.string :fathers_name
      t.string :phone_number

      t.timestamps
    end
  end
end

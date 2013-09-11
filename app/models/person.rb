class Person < ActiveRecord::Base
  attr_accessible :birthday, :email, :fathers_name, :federal_id, :inactivated_at, :mothers_name, :name, :phone_number, :regional_id, :social_security
  has_many :addresses
  accepts_nested_attributes_for :addresses, :limit >= 3, allow_destroy: true
  
end

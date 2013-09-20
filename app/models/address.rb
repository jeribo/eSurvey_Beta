class Address < ActiveRecord::Base
  belongs_to :type_address
  belongs_to :state
  belongs_to :city
  belongs_to :person
  validates :person, presence: true
  
  attr_accessible :description, :inactivated_at, :postal_code, :person_id
end

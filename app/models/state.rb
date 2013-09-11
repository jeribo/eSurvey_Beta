class State < ActiveRecord::Base
  belongs_to :country
  has_many :cities
  attr_accessible :abbreviated, :description, :inactivated_at, :country_id
  def to_label    
    "#{self.description}"
  end
end

class City < ActiveRecord::Base
  belongs_to :state
  belongs_to :contry
  attr_accessible :description, :inactivated_at, :state_id, :contry_id
  def to_label    
    "#{self.description}"
  end
end

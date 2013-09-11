class Country < ActiveRecord::Base
  attr_accessible :abbreviated, :description, :inactivated, :locale
  has_many :states
  has_many :cities
  def to_label    
    "#{self.description}"
  end
end

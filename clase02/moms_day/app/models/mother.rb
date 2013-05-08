class Mother < ActiveRecord::Base
  attr_accessible :name
  has_many :gifts
end

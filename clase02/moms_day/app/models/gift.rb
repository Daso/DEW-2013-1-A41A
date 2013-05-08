class Gift < ActiveRecord::Base
  attr_accessible :name, :price, :mother_id
  belongs_to :mother
end

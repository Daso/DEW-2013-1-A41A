class AddMotherIdToGift < ActiveRecord::Migration
  def change
    add_column :gifts, :mother_id, :integer
  end
end

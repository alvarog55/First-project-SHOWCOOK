class AddPurchasedVideosToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :purchased_videos, :string, array: true , default: []
  end
  
end

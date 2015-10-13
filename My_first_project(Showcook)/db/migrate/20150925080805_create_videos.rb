class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.string :title
    	t.text :recipe
    	t.string :link_url
    	t.references :user, index: true
      t.timestamps null: false
    end
  end
end

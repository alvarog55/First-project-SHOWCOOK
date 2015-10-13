class AddDataToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :surname, :string
    add_column :users, :street_address, :string
    add_column :users, :zip_code, :integer
    add_column :users, :money, :integer
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end

class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :working_hour_start, :string
    add_column :users, :working_hour_end, :string
    add_column :users, :timezone, :string
    add_column :users, :phone, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end

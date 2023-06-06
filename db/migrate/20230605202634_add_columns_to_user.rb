class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :working_hour_start, :time
    add_column :users, :working_hour_end, :time
    add_column :users, :timezone, :string
    add_column :users, :phone, :string
    add_column :users, :latitude, :decimal
    add_column :users, :longitude, :decimal
  end
end

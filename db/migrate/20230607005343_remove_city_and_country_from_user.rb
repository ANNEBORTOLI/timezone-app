class RemoveCityAndCountryFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :city
    remove_column :users, :country
  end
end

class AddWorkingHoursToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :working_hour_start, :integer
    add_column :users, :working_hour_end, :integer
  end
end

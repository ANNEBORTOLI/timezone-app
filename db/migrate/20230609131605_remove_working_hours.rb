class RemoveWorkingHours < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :working_hour_start
    remove_column :users, :working_hour_end
  end
end

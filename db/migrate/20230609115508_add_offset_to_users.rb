class AddOffsetToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :offset, :integer
  end
end

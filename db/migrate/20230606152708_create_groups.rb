class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :contact_ids, array: true, default: []

      t.timestamps
    end
  end
end

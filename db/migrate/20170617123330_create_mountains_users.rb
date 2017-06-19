class CreateMountainsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :mountains_users do |t|
      t.integer :user_id
      t.integer :mountain_id
    end
  end
end

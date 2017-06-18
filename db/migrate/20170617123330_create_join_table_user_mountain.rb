class CreateJoinTableUserMountain < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users_mountains do |t|
      t.integer :user_id
      t.integer :mountain_id
    end
  end
end

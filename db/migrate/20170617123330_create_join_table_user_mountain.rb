class CreateJoinTableUserMountain < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :mountains do |t|
      t.index [:user_id, :mountain_id]
      t.index [:mountain_id, :user_id]
    end
  end
end

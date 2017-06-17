class CreateJoinTableUserRun < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :runs do |t|
      t.index [:user_id, :run_id]
      t.index [:run_id, :user_id]
    end
  end
end

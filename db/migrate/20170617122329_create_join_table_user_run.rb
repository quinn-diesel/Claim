class CreateJoinTableUserRun < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users_runs do |t|
      t.integer :user_id
      t.integer :run_id
    end
  end
end

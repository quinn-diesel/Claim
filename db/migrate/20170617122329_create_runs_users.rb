class CreateRunsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :runs_users do |t|
      t.integer :user_id
      t.integer :run_id
    end
  end
end

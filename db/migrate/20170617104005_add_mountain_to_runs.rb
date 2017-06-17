class AddMountainToRuns < ActiveRecord::Migration[5.0]
  def change
    add_column :runs, :mountain_id, :integer
  end
end

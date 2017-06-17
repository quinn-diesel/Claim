class CreateMountains < ActiveRecord::Migration[5.0]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :size
      t.integer :number_of_runs
      t.string :map
      t.integer :highest_point
      t.integer :number_of_bars

      t.timestamps
    end
  end
end

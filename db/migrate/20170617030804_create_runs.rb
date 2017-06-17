class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.string :name
      t.string :length
      t.string :difficulty
      t.string :number_of_deaths
      t.boolean :claim
      t.text :image

      t.timestamps
    end
  end
end

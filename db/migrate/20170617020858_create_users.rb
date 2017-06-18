class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :ski_type
      t.text :photo
      t.string :nickname
      t.string :nationality
      t.string :home_mountain
      t.string :password_digest

      t.timestamps
    end
  end
end

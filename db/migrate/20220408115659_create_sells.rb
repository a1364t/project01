class CreateSells < ActiveRecord::Migration[5.2]
  def change
    create_table :sells do |t|
      t.text :address
      t.integer :price
      t.integer :room
      t.integer :bath
      t.text :property
      t.date :available
      t.text :image
      t.integer :rent_id
      t.integer :user_id

      t.timestamps
    end
  end
end

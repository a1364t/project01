class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.text :address
      t.integer :price
      t.integer :room
      t.integer :bath
      t.text :property
      t.date :available
      t.text :image
      t.integer :sell_id
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateRentsSells < ActiveRecord::Migration[5.2]
  def change
    create_table :rents_sells, :id => false do |t|
      t.integer :rent_id
      t.integer :sell_id
    end
  end
end

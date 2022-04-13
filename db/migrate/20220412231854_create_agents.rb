class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.text :title
      t.text :name
      t.text :phone


      t.timestamps
    end
  end
end

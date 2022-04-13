class AddAgentIdToRents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :agent_id, :integer
  end
end

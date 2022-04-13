class AddAgentIdToSells < ActiveRecord::Migration[5.2]
  def change
    add_column :sells, :agent_id, :integer
  end
end

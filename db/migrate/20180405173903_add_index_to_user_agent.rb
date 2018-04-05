class AddIndexToUserAgent < ActiveRecord::Migration[5.1]
  def change
    add_index :user_agents, :user_agent_string, unique: true
  end
end

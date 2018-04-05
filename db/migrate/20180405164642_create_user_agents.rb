class CreateUserAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :user_agents do |t|
      t.string :user_agent_string, :null => false
      t.datetime :first_visit
      t.datetime :last_visit
      t.integer :counter
      t.timestamps
    end
  end
end

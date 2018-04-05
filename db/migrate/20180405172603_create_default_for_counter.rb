class CreateDefaultForCounter < ActiveRecord::Migration[5.1]
  def change
    change_column :user_agents, :counter, :integer, :default => 0
  end
end

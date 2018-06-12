class AddCurrentLevelToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :current_level, :string, default: ""
  end
end

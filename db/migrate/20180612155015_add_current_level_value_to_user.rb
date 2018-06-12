class AddCurrentLevelValueToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :level_value, :integer, default: 0
  end
end

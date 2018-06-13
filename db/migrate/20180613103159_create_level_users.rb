class CreateLevelUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :levels_users do |t|

      t.timestamps
    end

    add_reference :levels_users, :user
    add_reference :levels_users, :level
  end
end

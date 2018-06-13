class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :name, null: false
      t.string :url, null: false, default: ""
      t.integer :level_number, default: 0

      t.timestamps null: false
    end
  end
end

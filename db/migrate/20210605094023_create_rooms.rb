class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string  :name, null: false
      t.integer :game_id, null: false
      t.integer :platform_id, null: false
      t.timestamps
    end
  end
end

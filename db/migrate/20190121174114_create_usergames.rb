class CreateUsergames < ActiveRecord::Migration[5.2]
  def change
    create_table :usergames do |t|
      t.string :user_id
      t.string :game_id
      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :word_id_1
      t.integer :word_id_2
      t.integer :bet_id
      t.integer :winner_id
      t.integer :loser_id
      t.timestamps
    end
  end
end

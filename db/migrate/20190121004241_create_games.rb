class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :word_one_id
      t.integer :word_two_id
      t.integer :bet_id
      t.integer :winner_id
      t.integer :loser_id
      t.integer :drawing_one_id
      t.integer :drawing_two_id
      t.timestamps
    end
  end
end

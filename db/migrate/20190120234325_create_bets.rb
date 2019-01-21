class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.string :bet
      t,integer :game_id
      t.string :string

      t.timestamps
    end
  end
end

class Bet < ApplicationRecord
  has_many :games
  has_many :users, through: :games

  def bet_games
    self.games.collect do |game|
      {word_one: game.word_one, word_two: game.word_two,
      drawing_one: game.drawing_one,drawing_two: game.drawing_two,
      winner: game.winner, loser: game.loser, bet: game.bet}
    end
  end
  validates :name, uniqueness: { case_sensitive: false }
end

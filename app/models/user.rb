class User < ApplicationRecord
  has_many :lost_games,:class_name => :Game, :foreign_key =>"loser_id"
  has_many :won_games,:class_name => :Game, :foreign_key =>"winner_id"
  has_many :words, through: :games
  has_many :drawings,through: :games

  def games_won
    self.won_games.collect do |game|
      {word_one: game.word_one, word_two: game.word_two,
        drawing_one: game.drawing_one,drawing_two: game.drawing_two,
         winner: game.winner, loser: game.loser, bet: game.bet}
    end
  end

  def games_lost
    self.won_games.collect do |game|
      {word_one: game.word_one, word_two: game.word_two,
        drawing_one: game.drawing_one,drawing_two: game.drawing_two,
         winner: game.winner, loser: game.loser, bet: game.bet}
    end
  end

  def all_games
    @all_games = []
    @all_games << {games_won: self.games_won}
    @all_games << {games_lost: self.games_lost}
    @all_games.flatten
  end
end

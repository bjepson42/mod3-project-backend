class Word < ApplicationRecord
  has_many :users, through: :games
  has_many :word_one,:class_name => :Game, :foreign_key =>"word_one_id"
  has_many :word_two,:class_name => :Game, :foreign_key =>"word_two_id"

  def word_game_ones
    self.word_one.collect do |game|
      {word_one: game.word_one, word_two: game.word_two,
      drawing_one: game.drawing_one,drawing_two: game.drawing_two,
      winner: game.winner, loser: game.loser, bet: game.bet}
    end
  end

  def word_game_twos
    self.word_two.collect do |game|
      {word_one: game.word_one, word_two: game.word_two,
      drawing_one: game.drawing_one,drawing_two: game.drawing_two,
      winner: game.winner, loser: game.loser, bet: game.bet}
    end
  end

  def all_word_games
    @all_word_games = []
    @all_word_games << {word_game_ones: self.word_game_ones}
    @all_word_games << {word_game_twos: self.word_game_ones}
    @all_word_games.flatten
  end
  validates :name, uniqueness: true
end

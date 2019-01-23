class Drawing < ApplicationRecord
  has_many :drawing_one,:class_name => :Game, :foreign_key =>"drawing_one_id"
  has_many :drawing_two,:class_name => :Game, :foreign_key =>"drawing_two_id"
  has_many :users, through: :games

  def drawing_one_games
    self.drawing_one.collect do |game|
      {word_one: game.word_one, word_two: game.word_two,
        drawing_one: game.drawing_one,drawing_two: game.drawing_two,
         winner: game.winner, loser: game.loser, bet: game.bet}
    end
  end

  def drawing_two_games
    self.drawing_two.collect do |game|
      {word_one: game.word_one, word_two: game.word_two,
        drawing_one: game.drawing_one,drawing_two: game.drawing_two,
         winner: game.winner, loser: game.loser, bet: game.bet}
    end
  end

  def all_drawing_games
    @all_drawing_games = []
    @all_drawing_games << {drawing_one_games: self.drawing_one_games}
    @all_drawing_games << {drawing_two_games: self.drawing_one_games}
    @all_drawing_games.flatten
  end
end

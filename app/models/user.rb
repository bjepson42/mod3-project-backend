class User < ApplicationRecord
  has_many :lost_games,:class_name => :Game, :foreign_key =>"loser_id"
  has_many :won_games,:class_name => :Game, :foreign_key =>"winner_id"
  has_many :words, through: :games

  def all_games
    @all_games = []
    @all_games << self.won_games
    @all_games << self.lost_games
    @all_games.flatten
  end
end

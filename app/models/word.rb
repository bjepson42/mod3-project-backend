class Word < ApplicationRecord
  has_many :users, through: :games
  has_many :word_one,:class_name => :Game, :foreign_key =>"word_one_id"
  has_many :word_two,:class_name => :Game, :foreign_key =>"word_two_id"

  def all_games
    @all_games = []
    @all_games << self.word_one
    @all_games << self.word_two
    @all_games.flatten
  end
end

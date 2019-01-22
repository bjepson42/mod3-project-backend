class Drawing < ApplicationRecord
  has_many :drawing_one,:class_name => :Game, :foreign_key =>"drawing_one_id"
  has_many :drawing_two,:class_name => :Game, :foreign_key =>"drawing_two_id"
  has_many :users, through: :games

  def all_games
    @all_games = []
    @all_games << self.drawing_one
    @all_games << self.drawing_two
    @all_games.flatten
  end
end

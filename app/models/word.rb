class Word < ApplicationRecord
  has_many :users, through: :games
  has_many :word_one,:class_name => :Game, :foreign_key =>"word_one_id"
  has_many :word_two,:class_name => :Game, :foreign_key =>"word_two_id"

  def word_games
  {word_one_game: self.word_one, word_two_game: self.word_two}
  end

end

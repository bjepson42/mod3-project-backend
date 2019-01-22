class Word < ApplicationRecord
  has_many :users, through: :games
  has_many :word_ones,:class_name => :Game, :foreign_key =>"word_one_id"
  has_many :word_twos,:class_name => :Game, :foreign_key =>"word_two_id"

  def all_words
    @all_words = []
    @all_words << self.word_ones
    @all_words << self.word_twos
    @all_words.flatten
  end
end

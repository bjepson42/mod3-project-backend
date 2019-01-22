class Game < ApplicationRecord
  belongs_to :winner, :class_name => :User, :foreign_key =>"winner_id"
  belongs_to :loser, :class_name => :User, :foreign_key =>"loser_id"
  belongs_to :word_one, :class_name => :Word, :foreign_key =>"word_one_id"
  belongs_to :word_two, :class_name => :Word, :foreign_key =>"word_two_id"
  belongs_to :bet
end

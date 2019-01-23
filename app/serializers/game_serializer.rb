class GameSerializer < ActiveModel::Serializer
  attributes :id, :word_one_id, :word_two_id, :bet_id, :winner_id, :loser_id
  # belongs_to :bet
  # belongs_to :winner
  # belongs_to :loser
  # belongs_to :word_one
  # belongs_to :word_two
end

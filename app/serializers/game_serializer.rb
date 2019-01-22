class GameSerializer < ActiveModel::Serializer
  attributes :id, :word_one_id, :word_two_id, :bet_id, :winner_id, :loser_id
end

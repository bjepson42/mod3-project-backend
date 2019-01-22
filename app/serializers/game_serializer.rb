class GameSerializer < ActiveModel::Serializer
  attributes :id, :word_id_1, :word_id_2, :bet_id, :winner_id, :loser_id
end

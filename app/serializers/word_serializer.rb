class WordSerializer < ActiveModel::Serializer
  attributes :id, :name, :word_game_ones, :word_game_twos
end

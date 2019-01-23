class GameSerializer < ActiveModel::Serializer
  attributes :id, :winner,:loser,:word_one, :word_two,:bet,:drawing_one, :drawing_two
end

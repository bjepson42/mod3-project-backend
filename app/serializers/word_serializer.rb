class WordSerializer < ActiveModel::Serializer
  attributes :id, :name, :all_games
  has_many :word_one
  has_many :word_two
end

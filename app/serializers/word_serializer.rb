class WordSerializer < ActiveModel::Serializer
  attributes :id, :name, :all_words
  has_many :word_ones
  has_many :word_twos
end

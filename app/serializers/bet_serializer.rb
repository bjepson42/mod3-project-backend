class BetSerializer < ActiveModel::Serializer
  attributes :id, :bet
  has_many :games
end

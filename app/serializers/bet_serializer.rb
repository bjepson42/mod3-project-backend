class BetSerializer < ActiveModel::Serializer
  attributes :id, :bet
  has_many :games

  # def x
  #   {bets_info: self.bet}
  # end
end

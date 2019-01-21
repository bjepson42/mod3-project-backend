class User < ApplicationRecord
  has_many :games, :through => :user_games
  has_many :bets
  has_many :usergames
end

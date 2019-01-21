class User < ApplicationRecord
  has_many :drawings
  has_many :bets
end

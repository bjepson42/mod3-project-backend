class User < ApplicationRecord
  has_many :games
  has_many :words, through: :games

end

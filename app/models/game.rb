class Game < ApplicationRecord
  belongs_to :user
  has_one :bet, through: :users
  has_many :usergames
end

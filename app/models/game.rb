class Game < ApplicationRecord
  belongs_to :user
  belongs_to :word
  belongs_to :bet
end

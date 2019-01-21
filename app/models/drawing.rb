class Drawing < ApplicationRecord
  belongs_to :user
  has_one :bet, through: :users
end

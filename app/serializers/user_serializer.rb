class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :all_games
  has_many :won_games
  has_many :lost_games
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :all_games, :games_won, :games_lost
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :all_user_games, :games_won, :games_lost
end

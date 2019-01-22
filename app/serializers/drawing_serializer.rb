class DrawingSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :all_games
  has_many :drawing_one
  has_many :drawing_two
end

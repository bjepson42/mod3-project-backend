class GamesController < ApplicationController
  def index
    render json: Game.all
  end

  def show
    render json: Game.find(params[:id])
  end

  def create
    render json: Game.create(game_params)
  end

  def update
    Game.find(params[:id]).update(game_params)
    render json: Game.find(params[:id])
  end

  def destroy
    render json: Game.find(params[:id]).destroy
  end

  private
  def game_params
    params.require(:game).permit(:word_one_id, :word_two_id, :bet_id, :winner_id, :loser_id)
  end
end

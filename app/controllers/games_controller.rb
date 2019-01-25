class GamesController < ApplicationController
  def index
    render json: Game.all
  end

  def show
    render json: Game.find(params[:id])
  end

  def create
    params[:game][:bet_id] = Bet.find_by_name(params[:bet]).id
    params[:game][:word_one_id] = Word.find_by_name(params[:word_one]).id
    params[:game][:word_two_id] = Word.find_by_name(params[:word_two]).id
    params[:game][:winner_id] = User.find_by_name(params[:winner]).id
    params[:game][:loser_id] = User.find_by_name(params[:loser]).id
    params[:game][:drawing_one_id] = 1
    params[:game][:drawing_two_id] = 2
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
    params.require(:game).permit(:drawing_one_id, :drawing_two_id, :word_one_id, :word_two_id, :bet_id, :winner_id, :loser_id, :word_one, :word_two, :bet, :winner, :loser)
  end
end

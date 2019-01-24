class BetsController < ApplicationController
  def index
    render json: Bet.all
  end

  def show
    render json: Bet.find(params[:id])
  end

  def create
    render json: Bet.create(bet_params)
  end

  def update
    Bet.find(params[:id]).update(bet_params)
    render json: Bet.find(params[:id])
  end

  def destroy
    render json: Bet.find(params[:id]).destroy
  end

  private
  def bet_params
    params.require(:bet).permit(:name)
  end

end

class DrawingsController < ApplicationController
  def index
    render json: Drawing.all
  end

  def show
    render json: Drawing.find(params[:id])
  end

  def create
    render json: Drawing.create(drawing_params)
  end

  def update
    Drawing.find(params[:id]).update(drawing_params)
    render json: Drawing.find(params[:id])
  end

  def destroy
    render json: Drawing.find(params[:id]).destroy
  end

  private
  def drawing_params
    params.require(:drawing).permit(:name,:img)
  end

end

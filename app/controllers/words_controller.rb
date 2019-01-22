class WordsController < ApplicationController
  def index
    render json: Word.all
  end

  def show
    render json: Word.find(params[:id])
  end

 def create
   render json: Word.create(word_params)
 end

 def update
   Word.find(params[:id]).update(word_params)
   render json: Word.find(params[:id])
 end

 def destroy
   render json: Word.find(params[:id]).destroy
 end

 private
 def word_params
   params.require(:word).permit(:name)
 end
end

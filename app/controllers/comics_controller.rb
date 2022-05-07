class ComicsController < ApplicationController
  def new
    @comic = Comic.new
  end
  
  def create
    @comic = Comic.new(comic_params)
    @comic.user_id = current_user.id
    if @comic.save
      redirect_to comic_path(@comic), notice: "You have created book successfully."
    else
      @comics = Comic.page(params[:page]).reverse_order
      render 'index'
    end
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  #ストロングパラメータ
  
  def comic_params
     params.require(:comic).permit(:title, :body, :author, :genre, :rate)
  end
  
  def correct_user
    @comic = Comic.find(params[:id])
    redirect_to(comics_path) unless @comic.user == current_user
  end
end

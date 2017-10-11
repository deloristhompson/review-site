class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comics_params)
    if @comic.save
      redirect_to @comic, notice: "Yay, you saved it!!"
    else
      render :new
    end
  end

  private
  def comics_params
    params.require(:comic).permit(
      :title,
      :illustrator,
      :publisher,
      :year_published,
      :ASIN,
      :condition
    )
  end

end

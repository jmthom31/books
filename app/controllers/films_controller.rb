class FilmsController < ApplicationController
  def index
    @films = Film.all.sort_by(&:name)
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      redirect_to films_path, notice: 'Film added'
    else
      render :new
    end
  end

  private

  def film_params
    params.require(:film).permit(:name, :imdb_rating, :recommended_by, :complete)
  end
end

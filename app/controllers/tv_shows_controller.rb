class TvShowsController < ApplicationController
  def index
    @tv_shows = TvShow.all.sort_by(&:name)
  end

  def new
    @tv_show = TvShow.new
  end

  def create
    @tv_show = TvShow.new(tv_show_params)
    if @tv_show.save
      redirect_to tv_shows_path, notice: 'TV show added'
    else
      render :new
    end
  end

  private

  def tv_show_params
    params.require(:tv_show).permit(:name, :imdb_rating, :recommended_by, :complete)
  end
end

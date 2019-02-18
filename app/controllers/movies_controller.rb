class MoviesController < ApplicationController
  def new 
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def index
    @movie = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "Movie was successfully created"
        redirect_to movie_path(@movie)
    else
      render 'new'
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:notice] = "Movie was successfully updated"
      redirect_to movie_path(@movie)
    else
      render 'edit'
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private 
    def movie_params
      params.require(:movie).permit(
      :name, 
      :release_date, 
      :short_description, 
      :description, 
      :genre, 
      :recommended?, 
      :age_bar, 
      :wallpaper)
    end
end
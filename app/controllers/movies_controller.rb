# Controller for displaying movies in the index page.
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @movie_star = MovieStar.find_by(movie_id: params[:id])
    @star = Star.find(@movie_star.star_id)
  end
end
